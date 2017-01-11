def check_if_number(input)
  string_input = input.to_s
  number_input = string_input.to_f
  input == number_input
end

def store_number(input, inputs_array)
  inputs_array << input
end
