class Player


  DEFAULT_ARMY_NUMBER = 3
  NEW_COUNTRY_NUMBER = 1

  attr_accessor :countries, :total_armies, :sample_country

  def initialize(*country)
    @total_armies 
    @countries = []
    country.each { |country| @countries << country }
  end

  def army_count
    @total_armies = DEFAULT_ARMY_NUMBER * countries.count 
  end

  def new_round
    @total_armies = NEW_COUNTRY_NUMBER * countries.count 
  end

  def sample_country
    @sample_country = @countries.sample
  end

  def delete_army
    @total_armies -= 1
  end


end
