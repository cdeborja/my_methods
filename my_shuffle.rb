class Array

  def my_shuffle
    shuffled_arr = []
    until shuffled_arr.length == self.length
      random_val = self[rand(self.length)]
      shuffled_arr << random_val unless shuffled_arr.include?(random_val)
    end
    shuffled_arr
  end
end
