require 'game'

describe Game do
  let(:game) {Game.new}

  it 'asks what token the player wants' do
    game.start_game.should == "What token are you?"
  end

  it 'allows player to choose token' do
    game.what_token.should_receive(:token).with('X')
  end
end