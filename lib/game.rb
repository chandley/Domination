class Game

  attr_accessor :player1, :player2

  def initialize
    player1, player2 = nil, nil
  end

  def add_player(player)
    self.player1 = player
  end
end