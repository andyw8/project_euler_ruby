# Add all the natural numbers below one thousand that are multiples of 3 or 5.

total = 0

(1..999).inject.each do |n|
  total += n if n % 3 == 0 || n % 5 == 0
end

p total