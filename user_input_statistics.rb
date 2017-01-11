def check_if_number(input)
  string_input = input.to_s
  number_input = string_input.to_f
  input == number_input
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
