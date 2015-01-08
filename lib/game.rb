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

  def invaded(country)
    opponent.remove_army(country)
  end

  def turn 
    @turn ||= player1
  end

  def attack(battle_setup_hash)
    if battle_setup_hash[:defending_country].armies == 1
      battle_setup_hash[:attacking_player].country_input(battle_setup_hash[:defending_country])
      battle_setup_hash[:defending_player].remove_country(battle_setup_hash[:defending_country])
      battle_setup_hash[:attacking_country].remove_army
    else
      battle_setup_hash[:defending_country].remove_army
    end
  end

  alias :current_player :turn

  private

  def has_two_players?
    !player2.nil?
  end


end