require 'sinatra/base'
require 'sinatra/json'
require 'rack-flash'
require 'json'

require_relative "./game"
require_relative "./player"
require_relative "./dice"

require_relative "./game.rb"

require_relative "./country_code_lookup"

GAME = Game.new

class Domination < Sinatra::Base

  helpers Sinatra::JSON

  enable :sessions

  SESSIONS = []

  use Rack::Flash


  set :public_folder, File.join(root, "..", "public") 

  get '/' do
    erb :game
  end

  get '/map' do
    if SESSIONS.count == 2
      erb :map
    else
      "Wait please"
    end
  end

  post '/player' do
    if SESSIONS.count == 2
      flash[:notice] = "Sorry there 2 players already in" 
      redirect to '/' 
    else
      session[:player_id] = 1 if SESSIONS.empty?
      session[:player_id] = SESSIONS.count + 1 if !SESSIONS.empty?
      GAME.add_player(Player.new)
      SESSIONS << session
      GAME.assign_countries if SESSIONS.count == 2
      redirect to '/map'
    end
  end

  get '/country_data' do
    countries = COUNTRIES
    content_type :json
    countries.to_json
  end

  get '/game_data' do
    content_type :json
    GAME.show_countries.to_json
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
