require 'benchmark'
def prime?(number)
  if number == 2 || number == 3
    return true
  elsif number < 2 || number % 2 == 0
    return false
  else
    i = 3
    while i < (number + 5) / 2
      if number % i == 0
        return false
      end
      i += 2
    end
    return true
  end
end

def prime0?(num)
  if num < 0 or num == 0 or num == 1
    return false
  else
    (2..num-1).to_a.all? do |possible_factor|
      num % possible_factor != 0
    end
  end
end
numbers = [-1, 1, 0, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 15, 17, 18, 23, 47, 1763, 101013, 105557]#, 56985463, 56988937]

def check_for_prime(array)
  array.each do |number|
    puts "#{number}  #{prime?(number)}"
  end
end


def check_for_prime0(array)
  array.each do |number|
    puts "#{number}  #{prime0?(number)}"
  end
end

Benchmark.bm do |bm|
  bm.report do
    i = 0
    while i < 4
      check_for_prime(numbers)
      i += 1
    end
  end

  bm.report do
    i = 0
    while i < 4
      check_for_prime0(numbers)
      i += 1
    end
  end
end
