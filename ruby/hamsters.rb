puts "What is this hamster's name?"

hamster_name = gets.chomp

puts "what is its volume? Please enter from 1- 10."

hamster_volume = gets.chomp.to_i

puts "Please enter its fur color."

hamster_fur_color = gets.chomp

puts "whether the hamster is a good candidate for adoption?"

adoption = gets.chomp.upcase

puts "Estimated age?"

estimated_age = gets.chomp

if estimated_age == nil
	estimated_age = "N/A"
else
	estimated_age = estimated_age.to_i
puts "Hamster Details"
puts "Hamster's name:		#{hamster_name}"
puts "Hamster's volume:	#{hamster_volume}"
puts "Hamster's fur color:	#{hamster_fur_color}"
puts "Hamster's status:	#{adoption}"
puts "Hamster's age:		#{estimated_age}"
end