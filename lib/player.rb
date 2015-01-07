class Player

  attr_accessor :countries, :armies

  def initialize(*country)
    @armies = 0
    @countries = []
    country.each { |country| @countries << country }
  end

end