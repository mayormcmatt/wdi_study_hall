puts "Enter a number, a + or - symbol, then another number."
first_num = gets.to_i
symbol = gets.chomp
second_num = gets.to_i

if symbol == "+"
	puts "Result: #{first_num} + #{second_num}"
elsif symbol == "+"
	puts "Result: #{first_num} - #{second_num}"
else
	puts "Please re-read those instructions, partner."
end
