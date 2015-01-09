class Game

  require_relative "./country.rb"

  COUNTRY_CODE_HASH = {
    'Belgium' => 'BE',
    'France' => 'FR',
    'United Kingdom' => 'GB',
    'Sweden' => 'SE',
    'Germany' => 'DE',
    'Hungary' => 'HU',
    'Bulgaria' => 'BG',
    'Denmark' => 'DK',
    # 'Jordan' => 'JO',
    'Finland' => 'FI',
    # 'Palestine' => 'PS',
    "Russia" => 'RU',
    "Ukraine" => 'UA',
    'Poland' => 'PL',
    'Italy' => 'IT',
    'Spain' => 'ES',
    'Switzerland' => 'CH',
    'Turkey' => 'TR',
    'Ireland' => 'IE',
    'Portugal' => 'PT',
    'Greece' => 'GR',
    'Norway' => 'NO',
    'Latvia' => 'LV',
    'Lithuania' => 'LT',
    'Estonia' => 'EE',
    'Romania' => 'RO',
    # 'Egypt' => 'EG',
    'Czech Republic' => 'CZ',
    'Montenegro' => 'ME',
    'Macedonia' => 'MK',
    'Netherlands' => 'NL',
    'Luxembourg' => 'LU',
    'Austria' => 'AT',
    'Slovakia' => 'SK',
    'Slovenia' => 'SI',
    'Croatia' => 'HR',
    'Bosnia and Hertz.' => 'BA',
    'Serbia' => 'RS',
    'Belarus' => 'BY',
    'Albania' => 'AL',
    'Georgia' => 'GE',
    'Moldova' => 'MD',
    'Kosovo' => '_0'}

  attr_accessor :player1, :player2
  attr_writer :turn

  def initialize
    player1, player2 = nil, nil
  end

  def show_countries

    countries_array = []
    player1.countries.each do |country| 
      country_hash = {}
      country_hash[:country] = COUNTRY_CODE_HASH[country.name]
      country_hash[:color] = 'red'
      countries_array << country_hash
    end

    player2.countries.each do |country| 
      country_hash = {}
      country_hash[:country] = COUNTRY_CODE_HASH[country.name]
      country_hash[:color] = 'blue'
      countries_array << country_hash
    end

    return {:countries => countries_array}
  end 


  def assign_countries
    players = [player1, player2]
    COUNTRY_CODE_HASH.keys.each do |country_name|
      country = Country.new(country_name)
      players.shuffle.first.country_input(country)
    end
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

  def switch_turns
    turn == player1 ? self.turn = player2 : self.turn = player1
  end

end