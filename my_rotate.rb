class Array
  def my_rotate(rotation = 1)
    optimal_rotate = rotation % length
    optimal_rotate = self.length + optimal_rotate if optimal_rotate<0

    self.drop(optimal_rotate) + self.take(optimal_rotate)

  end
end
