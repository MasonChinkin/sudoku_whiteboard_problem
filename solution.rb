def valid_board?
  board = @grid + @grid.transpose + squares
  board.delete(".")
  board.each do |set|
    (1..9).each { |num| return false if set.count(num) > 1 }
  end
  true
end

def squares
  all_quads = []

  (0..2).each do |i|
    all_quads << @board[i][0..2] + @board[i][0..2] + @board[i][0..2]
  end

  (3..5).each do |i|
    all_quads << @board[i][3..5] + @board[i][3..5] + @board[i][3..5]
  end

  (6..8).each do |i|
    all_quads << @board[i][6..8] + @board[i][6..8] + @board[i][6..8]
  end

  all_quads
end
