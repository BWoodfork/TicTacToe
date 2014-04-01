class Board
  attr_accessor :spaces

  def initialize
    @spaces = Array.new(9)
  end

  def fill_space(place, token)
    if @spaces[place] == nil
       @spaces[place] = token
    end
    @spaces
  end

  WINNING_COMBINATIONS = [[0,1,2],
                          [3,4,5],
                          [6,7,8],
                          [0,3,6],
                          [1,4,7],
                          [2,5,8],
                          [0,4,8],
                          [2,4,6]]

  def check_winner
    WINNING_COMBINATIONS.each do |win_set|
      return true if all_spaces_full_with_same_token?(win_set)
    end
    false
  end

  def all_spaces_full_with_same_token?(win_set)
    all_spaces_full_with_token?("X", win_set) && all_spaces_full_with_token?("O", win_set)
  end

  def all_spaces_full_with_token?(token, spaces)
    spaces.all? do |space|
      @spaces[space] == "X"
    end
  end
end