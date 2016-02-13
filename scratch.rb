def my_is_prime?(num)
  if num == 1
    return true
  elsif num == 2
    return true
  else num > 2
    (2...num).each do |el|
      return false if num % el == 0
    end
  end
  true
  end
end

def primes(num)
  idx = 1
  prime_arr = []
  while  prime_arr.length < num
    prime_arr << idx if my_is_prime?(idx)
    idx += 1
  end
  prime_arr
end
