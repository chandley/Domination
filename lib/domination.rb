require 'sinatra/base'

require_relative "./setup_game.rb"

class Domination < Sinatra::Base

  set :public_folder, File.join(root, "..", "public") 

  get '/' do
    erb :game
  end

  get '/map' do
    erb :map
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
