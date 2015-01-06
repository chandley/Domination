require 'sinatra/base'

class Domination < Sinatra::Base
  get '/' do
    'Belgium'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
