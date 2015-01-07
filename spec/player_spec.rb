require "player"

describe Player do

  let (:player) { Player.new("UK", "France", "Germany") }

  it "should have countries when initialized" do
    expect(player.countries).to eq ["UK", "France", "Germany"]
  end

  it "should have three armies per country, when initialized" do
    expect(player.army_count).to eq 9
  end

  it "should add one army to the country" do
    player.distribute_armies
    expect(player.countries)
  end

end