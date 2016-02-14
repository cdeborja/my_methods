def factorial_nth(n)
  return 1 if n == 0
  value = factorial_nth(n - 1)
  n * value
end

def factorial_arr(n)
  return [1] if n == 0
  factorial_arr(n-1)  << factorial_arr(n - 1).last * n
end
