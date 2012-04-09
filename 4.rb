# http://projecteuler.net/problem=4
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 x 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

class Fixnum
  def palindrome?
    self.to_s.reverse == self.to_s
  end
end

def products(x)
  r = []
  1.upto(x) do |i|
    1.upto(x) do |j|
      r << i*j
    end
  end
  r.uniq.sort.reverse
end

def largest(n)
  products(n).each do |p|
    return p if p.palindrome?
  end
end

p largest(999)