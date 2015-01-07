require "player"

describe Player do

  let (:player) { Player.new("UK", "France", "Germany") }

  it "should have countries when initialized" do
    expect(player.countries).to eq ["UK", "France", "Germany"]
  end

  it "should have total number of armies equal to 3 times the number of countires they have" do
    expect(player.army_count).to eq 9
  end

end