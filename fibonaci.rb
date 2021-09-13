# frozen_string_literal: true

def fibs(num)
  result_array = []
  return result_array if num == 0
  for i in 0..num-1
    if i.zero?
      result_array << 0
    elsif i == 1
      result_array << 1
    else
      result_array.push(result_array[i - 1] + result_array[i - 2])
    end
  end
  result_array
end

p fibs(0)
p fibs(1)
p fibs(2)
p fibs(7)

def fibs_rec(num)
  if num == 1
    result_array = [0]
  elsif num == 2
    result_array = [0, 1]
  else
    result_array = fibs_rec(num - 1)
    result_array.push(result_array[num - 2] + result_array[num - 3])
  end
  result_array
end

p fibs_rec(1)
p fibs_rec(2)
p fibs_rec(3)
p fibs_rec(4)
p fibs_rec(5)
p fibs_rec(9)
