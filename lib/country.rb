require 'army_module'

class Country

include Army

  attr_reader :name, :armies

  def initialize(name)
    @name = name
    @armies = 0
  end

end