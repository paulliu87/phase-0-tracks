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
class String
def bg_red;         "\e[41m#{self}\e[0m" end
def bg_green;       "\e[42m#{self}\e[0m" end
def bg_blue;        "\e[44m#{self}\e[0m" end
def bg_cyan;        "\e[46m#{self}\e[0m" end
def bg_gray;        "\e[47m#{self}\e[0m" end
def bg_purple;      "\e[45m#{self}\e[0m" end
def italic;         "\e[3m#{self}\e[23m" end
def bold;           "\e[1m#{self}\e[22m" end

end
puts " "
puts "Hamster Information Worksheet".bold
puts " "
puts "Name: 		"+"#{hamster_name}".bg_blue
puts "Volume: 	"+"#{hamster_volume}".bg_cyan
puts "Fur color: 	"+"#{hamster_color}".bg_blue
puts "Hamster's age: 	"+"#{hamster_age}".bg_cyan
if (adoption.downcase == "yes" || adoption == 1)
	adoption = true
	puts "Adoption: 	"+"#{adoption}".bg_purple
	puts "This hamster can be adopted.".bg_green
else 
	adoption = false
	puts "Adoption: 	"+"#{adoption}".bg_purple
	puts "This hamster can not be adopted.".bg_red
end

puts " "
puts "Blue color is a string type data.".bg_blue.italic
puts "Cyan color is a integer type data.".bg_cyan.italic
puts "Purlpe color is a boolean type data.".bg_purple.italic

