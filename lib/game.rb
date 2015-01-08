class Game

  attr_accessor :player1, :player2
  attr_writer :turn

  def initialize
    player1, player2 = nil, nil
  end

  def add_player(player)
    self.player1 ? self.player2 = player : self.player1 = player unless has_two_players?
  end

  private

  def has_two_players?
    !player2.nil?
  end

  def turn 
    @turn ||= player1
  end

end