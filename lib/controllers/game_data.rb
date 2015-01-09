class Domination < Sinatra::Base

  get '/country_data' do
    countries = COUNTRIES
    content_type :json
    countries.to_json
  end

  get '/game_data' do
    content_type :json
    GAME.show_countries.to_json
  end

end