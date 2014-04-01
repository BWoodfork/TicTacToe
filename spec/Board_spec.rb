require 'Board'

describe Board do
  let(:board)  { Board.new }

  it "has 9 empty spaces" do
    board.spaces.count.should == 9
  end

  it "fills in a space with a X" do
    board.fill_space(0, "X").should == ["X", nil, nil, nil, nil, nil, nil, nil, nil]
  end

  it "Fills a space with an O" do
    board.fill_space(0, "O").should == ["O", nil, nil, nil, nil, nil, nil, nil, nil]
  end

  it "Doesnt allow overwriting space" do
    board.fill_space(0, "X")
    board.fill_space(0, "O").should == ["X", nil, nil, nil, nil, nil, nil, nil, nil]
  end


  it "3 X's in a row horizontally is a win" do
    board.fill_space(0, "X")
    board.fill_space(1, "X")
    board.fill_space(2, "X") 
    board.check_winner.should == true
  end

  it "3 X's in a row horizontally is a win" do
    board.fill_space(3, "X")
    board.fill_space(4, "X")
    board.fill_space(5, "X") 
    board.check_winner.should == true
  end

  it "3 X's in a row horizontally is a win" do
    board.fill_space(6, "X")
    board.fill_space(7, "X")
    board.fill_space(8, "X")
    board.check_winner.should == true
  end

  it "3 X's in a row vertically is a win" do
    board.fill_space(3, "X")
    board.fill_space(4, "X")
    board.fill_space(5, "X")  
    board.check_winner.should == true
  end

  it "3 X's in a row vertically is a win" do
    board.fill_space(1, "X")
    board.fill_space(4, "X")
    board.fill_space(7, "X")
    board.check_winner.should == true
  end

  it "3 X's in a row vertically is a win" do
    board.fill_space(2, "X")
    board.fill_space(5, "X")
    board.fill_space(8, "X")
    board.check_winner.should == true
  end

  it "3 X's in a row diagnally is win" do
    board.fill_space(0, "X")
    board.fill_space(4, "X")
    board.fill_space(8, "X")
    board.check_winner.should == true
  end  
  it "3 X's in a row diagnally is win" do
    board.fill_space(6, "X")
    board.fill_space(4, "X")
    board.fill_space(2, "X")
    board.check_winner.should == true
  end  

  

end