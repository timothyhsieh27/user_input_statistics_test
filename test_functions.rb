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
  sum = inputs_array.reduce(:+)
end

def average_numbers(inputs_array)
  count = inputs_array.count
  sum = inputs_array.reduce(:+)
  average = (sum / count).to_f
end
