require 'sinatra/base'
require 'sinatra/json'
require 'json'

require_relative "./setup_game.rb"
require_relative "./game.rb"

require_relative "./country_code_lookup"

class Domination < Sinatra::Base
  helpers Sinatra::JSON

  


  set :public_folder, File.join(root, "..", "public") 

  get '/' do
    erb :game
  end

  get '/map' do
    
    erb :map
  end

  get '/country_data' do
    content_type :json
    COUNTRIES.to_json
  end

  get '/game_data' do
    content_type :json
    @my_game = Game.new
    @my_game.show_countries.to_json
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
