require 'sinatra/base'
require 'sinatra/json'
require 'json'

require_relative "./game"
require_relative "./player"
require_relative "./dice"

require_relative "./setup_game.rb"

require_relative "./country_code_lookup"

GAME = Game.new

class Domination < Sinatra::Base

  helpers Sinatra::JSON

  enable :sessions

  SESSIONS = []

  set :public_folder, File.join(root, "..", "public") 

  get '/' do
    erb :game
  end

  get '/map' do
    erb :map
  end

  post '/player' do
    redirect to '/' if SESSIONS.count == 2
    session[:player_id] = 1 if SESSIONS.empty?
    session[:player_id] = SESSIONS.count + 1 if !SESSIONS.empty?
    GAME.add_player(Player.new)
    SESSIONS << session
    assign_countries(RAW_COUNTRIES)
    redirect to '/map'
  end

  get '/country_data' do
    countries = COUNTRIES
    content_type :json
    countries.to_json
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
