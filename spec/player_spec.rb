require 'player'

describe Player do

  let(:player) { Player.new }

  it "enter game and be given countries and armies" do
    expect(player.countries.count).to eq 2
    expect(player.armies.count).to eq 2
  end

end

