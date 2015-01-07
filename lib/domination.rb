require 'sinatra/base'

class Domination < Sinatra::Base
  get '/' do
    'United Kingdom : 1 Iceland Scandinavia'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
