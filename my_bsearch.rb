def my_bsearch(&prc)
  return nil if self.empty?

  mid = self.length/2
  if prc.call(self[mid]) && (self.take(mid).all? {|x| prc.call(x)} == false)
    return self[mid]
  elsif prc.call(self[mid]) && (self.take(mid).any? {|x| prc.call(x)} == true)
    bsearch(arr.take(mid), target)
  else #prc.call(self[mid]) == false
    upper = self.drop(mid + 1)
    sub_ans = upper.my_bsearch(prc)
    (sub_ans.nil?) ? nil : (mid + 1) + sub_ans
  end
end

p ary = [0, 4, 7, 10, 12]
p ary.bsearch {|x| x >=   4 } #=> 4
p ary.bsearch {|x| x >=   6 } #=> 7
p ary.bsearch {|x| x >=  -1 } #=> 0
p ary.bsearch {|x| x >= 100 } #=> nil
