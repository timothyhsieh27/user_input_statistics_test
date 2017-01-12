def check_if_number(input)
  number_input = input.to_i
  string_input = number_input.to_s
  input == string_input
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
  inputs_array << input
  ask_for_number(inputs_array)
end

def count_numbers(inputs_array)
  count = inputs_array.count
  puts "You entered #{count} number(s)."
  sum_numbers(count, inputs_array)
end

def sum_numbers(count, inputs_array)
  sum = inputs_array.map(&:to_i).reduce(:+).to_s
  puts "The sum of your number(s) is #{sum}."
  average_numbers(count, sum, inputs_array)
end

def average_numbers(count, sum, inputs_array)
  average = (sum.to_f / count.to_f)
  puts "The average of your number(s) is #{average}."
end

def calculate_statistics(inputs_array)
  count_numbers(inputs_array)
  inputs_array = []
  ask_for_number(inputs_array)
end

def check_input(input, inputs_array)
  loop do
    if check_if_number(input)
      puts 'You put a number.'
      store_number(input, inputs_array)
    elsif check_if_blank(input)
      puts 'Now calculating...'
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
