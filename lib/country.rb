class Country

  attr_reader :name, :armies

  def initialize(name)
    @name = name
    @armies = 0
  end

  def add_army
    @armies += 1
  end

  def remove_army
  	@armies -= 1
  end

  

end
