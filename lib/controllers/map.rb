class Domination < Sinatra::Base

  get '/map' do
    if SESSIONS.count == 2
      erb :map
    else
      "Wait please"
    end
  end

end