# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0, 1, 2], 
  [3, 4, 5], 
  [6, 7, 8], 
  [0, 3, 6], 
  [1, 4, 7], 
  [2, 5, 8], 
  [0, 4, 8], 
  [6, 4, 2]
]

def won?
  result = false
  WIN_COMBINATIONS.each do |win_combo|
    subset = [@board[win_combo[0]], @board[win_combo[1]], @board[win_combo[2]]]
    if subset.all? {|i| i == "X"} || subset.all? {|i| i == "O"}
      result = subset
    end
  end
  result
end

def won?
    result = false
    WIN_COMBINATIONS.each do |win_combo|
      subset = [@board[win_combo[0]], @board[win_combo[1]], @board[win_combo[2]]]
      if subset.all? {|i| i == "X"} || subset.all? {|i| i == "O"}
        result = subset
      end
    end
    result
  end

  def full?
    @board.reject{|i| ["X", "O"].include?(i)}.count == 0 ? true : false
  end

  def over?
    draw? || won?
  end

  def winner
    x = won?
    x ? x[0] : nil
  end

  def play
    ## Keep going until the game ends
    until over?
      turn
    end

    # ## Tell the user what happened after the game ends
    if won?
      puts "Congratulations #{winner}!"
    elsif draw?
      puts "Cats Game!"
    end
  end

end
