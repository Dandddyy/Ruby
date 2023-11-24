num = "10000000001"

def func (num)
  res = 0
  num.chars.each.with_index do |n, i|
    res += 2 ** i if n == '1'
  end
  res
end

puts func(num)