class Game

  attr_accessor :player1, :player2

  def initialize
    player1, player2 = nil, nil
  end

  def add_player(player)
    self.player1 ? self.player2 = player : self.player1 = player unless has_to_players
  end

  private

  def has_to_players
  	!self.player2 = nil
  end



end