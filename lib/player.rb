require 'army_module'

class Player

  include Army

  DEFAULT_ARMY_NUMBER = 3

  attr_accessor :countries, :total_armies, :sample_country

  def initialize(*country)
    @total_armies 
    @countries = []
    country.each { |country| @countries << country }
  end

  def army_count
    @total_armies = DEFAULT_ARMY_NUMBER * countries.count 
  end

  def sample_countries
    @sample_country = @countries.sample
  end


end

  # def add_to_suffle_countries
  #   @sample_country.add_army
  # end

  # def army_country_count
    
  # end

  # def add_army(sample_country)
  #   add_army(sample_country)
  # end

  # def remove_army
  #   @army -= 1
  # end