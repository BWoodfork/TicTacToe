require 'Board'

describe Board do
board = Board.new

  it "has 9 empty spaces" do
    board.empty_spaces.count.should == 9
  end
  it "fills in a space with a token" do
    board.fill_space(0, "X")
    board.fill_space(0, "X").should == ["X", nil, nil, nil, nil, nil, nil, nil, nil]
    board.fill_space(0, "O")
    board.fill_space(0, "O").should == ["O", nil, nil, nil, nil, nil, nil, nil, nil]
  end
  
end