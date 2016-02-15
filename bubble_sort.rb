class Array
  def my_bubble_sort(&prc)
    sorted = false
    arr = self
    prc ||= Proc.new {|idx1, idx2| idx1 <=> idx2}
    until sorted
      idx1 = 0
      sorted = true
        while idx1 < arr.length - 1
          idx2 = idx1 + 1
          if prc.call(arr[idx1], arr[idx2]) == 1
            arr[idx1], arr[idx2] = arr[idx2], arr[idx1]
            sorted = false
          end
          idx1 += 1
        end
      end
    arr
  end
end
