require 'game'
require 'board'

describe Game do
  let(:game) {Game.new(Board.new)}

  it 'has a board of 9 spaces' do
    @board.count.should == 9
  end
end