require "player"

describe Player do

  let (:player) { Player.new("UK", "France", "Germany") }

  it "should have countries when initialized" do
    expect(player.countries).to eq ["UK", "France", "Germany"]
  end

  it "should have total number of armies equal to 3 times the number of countires they have" do
    expect(player.army_count).to eq 9
  end

  it "should select a country at random" do
    expect(player.sample_country).to eq 'UK'
  end

  it "should remove an army from Player" do
    player.army_count
    expect(player.delete_army).to eq 8
  end

  it "should start new round with new armies" do
    expect(player.new_round).to eq 3
  end


end