# frozen_string_literal: true

# Problem 1
def multiples_of3_or5(integer, valid_multiples_array = [])
  integer -= 1
  return valid_multiples_array.sum if integer.zero?

  valid_multiples_array << integer if (integer % 3).zero? || (integer % 5).zero?

  multiples_of3_or5(integer, valid_multiples_array)
end

# p multiples_of3_or5(1000)

# Problem 2
def even_fibonacci_numbers(integer = 1, array_of_evens = [])
  return array_of_evens.sum if find_fib(integer) > 4_000_000

  array_of_evens << find_fib(integer) if find_fib(integer).even?

  even_fibonacci_numbers(integer + 1, array_of_evens)
end

def find_fib(position_in_sequence)
  return 0 if position_in_sequence == 1
  return 1 if position_in_sequence == 2

  find_fib(position_in_sequence - 2) + find_fib(position_in_sequence - 1)
end

p even_fibonacci_numbers
