require_relative "./player.rb"
require_relative "./country.rb"
require_relative "./country_code_lookup.rb"

class MockGame

  attr_reader :player1, :player2

  def initialize

    uk = Country.new('United Kingdom')
    uk.add_army
    sweden = Country.new('Sweden')
    sweden.add_army
    france = Country.new('France')
    france.add_army

    @player1 = Player.new(uk)
    @player2 = Player.new(sweden, france)

  end

end