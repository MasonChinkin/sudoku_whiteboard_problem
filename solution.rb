def valid_board?
  board = @grid + @grid.transpose + squares
  board.delete(".")
  board.each do |set|
    (1..9).each { |num| return false if set.count(num) > 1 }
  end
  true
end

def squares
  squares = Array.new(9) { [] }

  @grid.each_with_index do |row, row_i|
    row.each_with_index do |col, col_i|
      if row_i < 3 && col_i < 3
        squares[0] << col
      end

      if row_i < 3 && col_i < 6 && col_i > 2
        squares[1] << col
      end

      #...
    end
  end

  squares
end
