class Country


  attr_reader :name, :armies

  def initialize(name)
    @name = name
    @armies = 1
  end

  def add_army
    @armies += 1
  end

  def remove_army
    @armies -= 1
  end

  def army_count
    @armies
  end

  def armies?
    raise "Game error: There are no armies on this country" if army_count<1
    army_count
  end

end