def all_subsets(arr)
  return [arr] if arr.empty?
  last_el = arr.last
  previous_subsets = all_subsets(arr[0...-1])
  results = []
  previous_subsets.each do |el|
    results << el
    results << el + [last_el]
  end
  results
end
