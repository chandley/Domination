class Domination < Sinatra::Base

  post '/attack' do
    attacking_country = GAME.player1.countries.select { |c| c.name == params[:"attacking country"] }.first
    defending_country = GAME.player2.countries.select { |c| c.name == params[:"defending country"] }.first
    battle_setup_hash = {:attacking_country => attacking_country,
                         :defending_country => defending_country,
                         :attacking_player => GAME.player1,
                         :defending_player => GAME.player2
                        }
    GAME.attack(battle_setup_hash)
    redirect to '/map'
  end
end