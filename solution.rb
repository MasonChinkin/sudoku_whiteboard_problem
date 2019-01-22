def valid_board?
  board = @grid + @grid.transpose + squares
  board.delete(".")
  board.each do |set|
    (1..9).each { |num| return false if set.count(num) > 1 }
  end
  true
end

def squares
  squares = []
  @grid.each do |row|
  end
end
