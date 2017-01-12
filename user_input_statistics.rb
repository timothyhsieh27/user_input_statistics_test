def check_if_number(input)
  float_string = input.to_f.to_s
  integer_string = input.to_i.to_s
  input == float_string || input == integer_string
end

def check_if_blank(input)
  input == ''
end

def ask_for_number(inputs_array)
  puts 'Please enter a number. When finished, press "Enter" without typing.'
  input = gets.chomp
  check_input(input, inputs_array)
end

def store_number(input, inputs_array)
  puts 'You put a number.'
  inputs_array << input
  ask_for_number(inputs_array)
end

def count_numbers(inputs_array)
  count = inputs_array.count
  puts "You entered #{count} number(s)."
  sum_numbers(count, inputs_array)
end

def sum_numbers(count, inputs_array)
  sum = inputs_array.map(&:to_f).reduce(:+).to_s
  puts "The sum of your number(s) is #{sum}."
  average_numbers(count, sum, inputs_array)
end

def average_numbers(count, sum, inputs_array)
  average = (sum.to_f / count.to_f)
  puts "The average of your number(s) is #{average}."
end

def calculate_statistics(inputs_array)
  puts 'Now calculating...'
  count_numbers(inputs_array)
  inputs_array = []
  ask_for_number(inputs_array)
end

def check_input(input, inputs_array)
  loop do
    if check_if_number(input)
      store_number(input, inputs_array)
    elsif check_if_blank(input)
      calculate_statistics(inputs_array)
    else
      puts 'That was not a number.'
      ask_for_number(inputs_array)
    end
  end
end

def main
  inputs_array = []
  ask_for_number(inputs_array)
end

main if __FILE__ == $PROGRAM_NAME
