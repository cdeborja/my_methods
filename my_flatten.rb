class Array
  def my_flatten
    flattened = []
    self.each do |el|
      if el.is_a?(Array)
        flattened += el.my_flatten
      else
        flattened << el
      end
    end
    flattened
  end
end
