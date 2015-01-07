class Country

  attr_reader :name, :armies

  def initialize(name)
    @name = name
    @armies = []
  end

  def add_army(army)
    @armies << army
  end

end
