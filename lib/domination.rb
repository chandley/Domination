require 'sinatra/base'
require 'sinatra/json'
require 'json'

require_relative "./game.rb"
require_relative "./player.rb"
require_relative "./country.rb"

require_relative "./country_code_lookup"

class Domination < Sinatra::Base
  helpers Sinatra::JSON


  set :public_folder, File.join(root, "..", "public") 

  GAME = Game.new

  get '/' do
    erb :game
  end

  post '/new_game' do
    p '___________________________'
    erb :game
    player = Player.new
    uk = Country.new('uk')
    fr = Country.new('fr')

    @name = player
    GAME.add_player(player)
    player.country_input(uk)
    player.country_input(fr)
    p GAME
    p '___________________________'

    redirect "/map"
  end

  get '/map' do
    erb :map
  end

  get '/try_json' do
    content_type :json
    COUNTRIES.to_json
  end

  get '/country_data' do
    content_type :json
    COUNTRIES.to_json
    erb :try_json
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
