class Domination < Sinatra::Base


  post '/player' do
    if SESSIONS.count == 2
      flash[:notice] = "Sorry there 2 players already in" 
      redirect to '/' 
    else
      session[:player_id] = 1 if SESSIONS.empty?
      session[:player_id] = SESSIONS.count + 1 if !SESSIONS.empty?
      GAME.add_player(Player.new)
      SESSIONS << session
      GAME.assign_countries if SESSIONS.count == 2
      redirect to '/map'
    end
  end
end