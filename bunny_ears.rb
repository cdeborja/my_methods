def bunny_ears(num)
  ears = 0
  if num < 1
    0
  elsif num == 1
    2
  else
    extra_ears = bunny_ears(num - 1)
    ears = extra_ears + 2
  end
end
