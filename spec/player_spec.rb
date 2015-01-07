require "player"

describe Player do

  let (:player) { Player.new("UK", "France", "Germany") }

  it "should have countries when initialized" do
    expect(player.countries).to eq ["UK", "France", "Germany"]
  end

  it "should have zero armies when initialized" do
    expect(player.armies).to eq 0
  end
end