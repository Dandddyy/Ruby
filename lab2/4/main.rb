num = 828

def func(num)
  res = ""
  while num > 0
    res << (num % 2).to_s
    num = num / 2
  end
  res.reverse
end

puts func(num)