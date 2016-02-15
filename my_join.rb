class Array
  def my_join(seperator = "")
    join = ""

    self.length.times do |i|
      join += self[i]
      join += seperator unless i == self.length - 1
    end

    join

  end
end
