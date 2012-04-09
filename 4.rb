# http://projecteuler.net/problem=4
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 x 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

class Fixnum
  def palindrome?
    self.to_s.reverse == self.to_s
  end
end

def products(x)  
  range = (1..x).to_a
  elements = range.product(range).map{ |a| a[0] * a[1] }
  elements.uniq.sort.reverse
end

def largest(n)
  products(n).each do |p|
    return p if p.palindrome?
  end
end

p largest(999)