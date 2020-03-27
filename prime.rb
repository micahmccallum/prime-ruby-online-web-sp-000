def prime?(number)
  if number == 2 || number == 3
    return true
  elsif  number < 2 || number % 2 == 0
    return false
  else
    i = 3
    while i < number / 2
      if number % i == 0
        return false
      end
      i += 2
    end
    return true
  end
end

numbers = [-1, 1, 0, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 15, 17, 18, 23, 47, 1763, 101013, 105557, 56985463]

def check_for_prime(array)
  array.each do |number|
    puts "#{number}  #{prime?(number)}"
  end
end

check_for_prime(numbers)
