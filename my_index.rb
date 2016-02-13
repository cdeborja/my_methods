class Array
  def my_index(target)

    self.each_with_index do |value, idx|
      if value == target
        return idx
      end
    end
    nil
  end
end
