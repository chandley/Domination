require 'sinatra/base'

require_relative "./setup_game.rb"

class Domination < Sinatra::Base
  get '/' do
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
