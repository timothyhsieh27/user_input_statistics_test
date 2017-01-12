def check_if_number(input)
  number_input = input.to_i
  string_input = number_input.to_s
  input == string_input
end

def store_number(input, inputs_array)
  inputs_array << input
end

def count_numbers(inputs_array)
  count = inputs_array.count
end

def sum_numbers(inputs_array)
  sum = inputs_array.map(&:to_i).reduce(:+).to_s
end

def average_numbers(inputs_array)
  count = inputs_array.count
  sum = inputs_array.map(&:to_i).reduce(:+).to_s
  average = (sum.to_f / count.to_f)
end
