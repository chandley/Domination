class Domination < Sinatra::Base

  get '/map' do
    if SESSIONS.count == 2
      erb :map
    else
      erb :wait
    end
  end

end