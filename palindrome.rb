puts "Enter a word to find out if it's a palindrome."
word = gets.chomp

reversed = word.reverse

if reversed == word
	puts "#{word.capitalize} is a palindrome!"
else
	puts "#{word.capitalize} is NOT a palindrome, sucka."
end