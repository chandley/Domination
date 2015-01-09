class Player


  DEFAULT_ARMY_NUMBER = 2
  NEW_COUNTRY_NUMBER = 1

  attr_accessor :name, :countries

  def initialize
    @unassigned_armies 
    @countries = []
    # country.each { |country| @countries << country }
  end

  # def country_initial_assign
  #   if @countries.count < 21
  #     @countries << country
  #   else
  #     @countries
  #   end
  # end

  def country_input(country)
    @countries << country
  end

  def remove_country(country)
    @countries.delete(country)
  end

  # def start_number_of_armies
  #   @unassigned_armies = DEFAULT_ARMY_NUMBER * countries_count 
  # end

  # def new_round
  #   @unassigned_armies = NEW_COUNTRY_NUMBER * countries_count 
  # end

  # def sample_country
  #   @sample_country = @countries.sample
  # end

  # def delete_army
  #   @unassigned_armies -= 1
  # end

  # def countries_count
  #   countries.count
  # end

end
