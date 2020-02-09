require 'game'

describe Game do
  subject(:game) { described_class.new("Foobar") }

  describe '#player_name' do
    it 'should return the player name' do
      expect(game.player_name).to eq "Foobar"
    end
  end
  
  describe '#move(selection)' do
    it 'should set the player move' do
      expect(game).to respond_to(:move).with(1).argument
    end
  end

  describe '#player_move' do
    it 'should return the player move' do
      game.move("rock")
      expect(game.player_move).to eq("rock")
    end
  end

end