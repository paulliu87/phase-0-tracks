puts "what is hamster's name?"

hamster_name = gets.chomp

puts "What is the volume level of the hamster?"

hamster_volume = gets.chomp.to_i

puts "What is hamster's fur color?"

hamster_color = gets.chomp

puts "Is the hamster a good candidate or adoption?"

adoption = gets.chomp

puts "How old is the hamster?"

hamster_age = gets.chomp

if hamster_age == ""
	hamster_age = nil
else
	hamster_age = hamster_age.to_i
end

puts "Hamster Information Worksheet"
puts " "
puts "Name: #{hamster_name}"
puts "Volume: #{hamster_volume}"
puts "Fur color: #{hamster_color}"
if (adoption.downcase == "yes" || adoption == 1)
	adoption = true
	puts "This hamster can be adopted."
else 
	adoption = false
	puts "This hamster can not be adopted."
end
puts "Hamster's age: #{hamster_age}"


