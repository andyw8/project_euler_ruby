# The sum of the squares of the first ten natural numbers is,
# 
# 1^2 + 2^2 + ... + 10^2 = 385
# The square of the sum of the first ten natural numbers is,
# 
# (1 + 2 + ... + 10)^2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 - 385 = 2640.
# 
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def sum_of_squares(n)
  (1..n).inject(0) do |total, i|
    total += i**2
  end
end

def square_of_sums(n)
  ((1..n).inject(0) do |total, i|
    total += i
  end) ** 2
end

def difference(n)
  square_of_sums(n) - sum_of_squares(n)
end

p difference(100)
