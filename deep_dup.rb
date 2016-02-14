class Array
  def deep_dup
    deep_dupped = []
      self.each do |el|
        deep_dupped << (el.is_a?(Array) ? el.deep_dup : el)
      end
    deep_dupped
  end
end
