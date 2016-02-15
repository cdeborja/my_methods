def quicksort(array)
  arr = array.dup
  return arr if arr.length <= 1
  pivot = arr.length/2
  pivot_val = arr[pivot]
  arr.delete_at(pivot)

  lesser = []
  greater = []

  arr.each do |el|
    if el < pivot_val
      lesser << el
    else
      greater << el
    end
  end
  return quicksort(lesser) + [pivot_val] + quicksort(greater)
end
