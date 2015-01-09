require 'sinatra/base'
require 'sinatra/json'
require 'rack-flash'
require 'json'

require_relative "./models/game"
require_relative "./models/player"

require_relative "./models/game.rb"

require_relative "./models/country_code_lookup"

require_relative './controllers/application.rb'
require_relative './controllers/map.rb'
require_relative './controllers/game.rb'
require_relative './controllers/game_data.rb'
require_relative './controllers/player.rb'

GAME = Game.new

class Domination < Sinatra::Base

  helpers Sinatra::JSON
  enable :sessions
  SESSIONS = []
  use Rack::Flash

  set :public_folder, File.join(root, "..", "public") 
  set :views, File.join(root, ".." "views") 


  # get '/attack' do
  #   erb :attack_form
  # end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
