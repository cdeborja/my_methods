class Array
  def my_zip(*args)
    zipped =[]
    self.length.times do |i|
      subzip = [self[i]]

      args.each do |array|
        subzip << array[i]
      end

      zipped << subzip
    end

    zipped
  end
end

p  a = [ 4, 5, 6 ]
p  b = [ 7, 8, 9 ]
p [1, 2, 3].my_zip(a, b)
