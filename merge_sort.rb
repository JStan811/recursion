# frozen_string_literal: true

# rubocop : disable Metrics/MethodLength
# rubocop : disable Metrics/AbcSize
def merge_sort(array)
  length_of_array = array.length

  if length_of_array < 2
    sorted_array = array
    return sorted_array
  end

  array_half_a = array.slice(0, (length_of_array.to_f / 2).round)
  array_half_b = array.slice((length_of_array.to_f / 2).round, length_of_array / 2)
  sorted_array_a = merge_sort(array_half_a)
  sorted_array_b = merge_sort(array_half_b)
  merged_sorted_array = []
  index_array_a = 0
  index_array_b = 0

  while index_array_a < sorted_array_a.length && index_array_b < sorted_array_b.length
    if sorted_array_a[index_array_a] < sorted_array_b[index_array_b]
      merged_sorted_array << sorted_array_a[index_array_a]
      index_array_a += 1
    else
      merged_sorted_array << sorted_array_b[index_array_b]
      index_array_b += 1
    end
  end

  merged_sorted_array += if index_array_a == sorted_array_a.length
                           sorted_array_b.slice(index_array_b, sorted_array_b.length)
                         else
                           sorted_array_a.slice(index_array_a, sorted_array_a.length)
                         end

  merged_sorted_array
end

array_small = [1]
array_empty = []
array_even_length = [10, 5, 8, 1, 2, 6, 5, 9, 200, 3]
array_odd_length = [1, 5, 3, 11, 9, 2, 4]

puts 'Merge Sort demonstration:'
puts "Array with 1 value: #{merge_sort(array_small)}"
puts "Empty array: #{merge_sort(array_empty)}"
puts 'Array of even length:'
puts "Original: #{array_even_length}"
puts "Sorted: #{merge_sort(array_even_length)}"
puts 'Array of odd length:'
puts "Original: #{array_odd_length}"
puts "Sorted: #{merge_sort(array_odd_length)}"
