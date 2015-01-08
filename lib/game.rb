class Game

  attr_accessor :player1, :player2
  attr_writer :turn

  def initialize
    player1, player2 = nil, nil
  end

  def add_player(player)
    self.player1 ? self.player2 = player : self.player1 = player unless has_two_players?
  end

  def opponent 
    current_player == player1 ? player2 : player1
  end

  def attack(country)
    opponent.receive_attack(country)
  end

  # def army_battl

  def turn 
    @turn ||= player1
  end

  alias :current_player :turn

  private

  def has_two_players?
    !player2.nil?
  end


end