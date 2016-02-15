class Array
  def my_transpose
    size.times do |row|
      0.upto(row) do |col|
        self[row][col], self[col][row] = self[col][row], self[row][col]
      end
    end
    self
  end
end
