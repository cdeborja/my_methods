def exp(base, exp)
  if exp == 0
    1
  else
    value = base * exp(base,exp - 1)
  end
end
