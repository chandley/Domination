class Assign_Country

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

  def intitialize(player1, player2)
    raise "Two players not present yet" if player1  && player2
    assign_countries_randomly_to_players(player1, player2) if player1 && player2
  end



  def assign_countries
    players = [player1, player2]
    COUNTRY_CODE_HASH.keys.each do |country_name|
      country = Country.new(country_name)
      players.shuffle.first.country_input(country)
    end
  end

end