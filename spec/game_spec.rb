require 'game'

describe Game do
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }
  subject(:game) {described_class.new(player_1,player_2)}
  describe '#attack' do
    it 'damages the player' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end

  describe "#initialize" do
    it 'accepts 2 player instances' do
      expect(game.player_1).to eq player_1
      expect(game.player_2).to eq player_2
    end
  end
end
