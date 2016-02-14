def fib_rec(num)
  if num <= 2
    [0,1].take(num)
  else
    fibs = fib_rec(num - 1)
    fibs << fibs[-1] + fibs[-2]
  end
end

def fib_iter(num)
  return [] if num == 0
  return [0] if num == 1

  fibs = [0,1]

  while fibs.count < num
    fibs << fibs[-1] + fibs[-2]
  end
  fibs
end

def fib_num(num)
  if num == 0
    0
  elsif num == 1
    1
  else
    ans = fib_num(num - 2) + fib_num(num - 1)
  end
end
