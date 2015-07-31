def solver(num)
  return num * num if is_palindromic((num * num).to_s)
  return num * (num-1) if is_palindromic((num * (num-1)).to_s)
  solver(num-1)
end

def is_palindromic(s)
  s[0...(s.length.to_f / 2).ceil] == s[s.length / 2..-1].reverse
end

puts solver(999)
