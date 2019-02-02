# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

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