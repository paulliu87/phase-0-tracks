=begin
Make a process of catching a pokemon
1. def a pokemon with some instance methods
2. def another pokemon with some instance methods
3. counter a pokemon, create one
4. ask user what to do
5. Input: to attch pokemon with another pokemon
6. escape the combat print a message
7. catch pokemon  when its hp is low enough
8. attach pokemon with user's pokemon and display the data
	for example: what skill is used and how much hp left
9. once the pokemon is caught, user can give a name to the pokemon
Output: new pokemon's name and skills

	
=end



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

class Pikachu
 	attr_reader :skills
 	attr_accessor :name
 	def initialize(name = "Pikachu")
 		@name = name
 		@skills = ["bolt","bit"]

 	end

 	def attack(dmg)
 		puts "Pikachu used " + "#{skills[rand(2)]}".bg_red+" and caused "+"#{dmg}".bg_red+"HP damage."
 	end

 	def display
 		puts "/\\~╱\\"
 		puts "\\0_0/╱\\╱"
 		puts "\\_^_/"
 	end

 	def display_stats
 		puts " Name: #{name}"
 		puts " Skills: #{skills}"
 	end

 end

 class Magikarp
 	attr_reader :name,:skills
 	def initialize(name = "Magikarp")
 		@name = name
 		@skills = ["swift","swim"]

 	end

 	def attack(dmg)
 		puts "Magikarp used "+ "#{skills[rand(2)]}".bg_green+" and caused "+"#{dmg}".bg_green+"HP damage."
 	end

 	def display_stats
 		puts " Name: #{name}"
 		puts " Skills: #{skills}"
 	end

 end


 new_pokemon = Pikachu.new
 new_pokemon.display

 puts "You have found a wild Pikachu!"

 
 hp = 100
 pokemon_is_wild = true
 
 while (pokemon_is_wild == true)
 	puts "What would you like to do:"
 	
	puts "A. Magikarp, attack!" 
 	puts "B. Escape!"
 	puts "C. Catch!"
	action = gets.chomp
 if action.downcase == "b"
 	puts "You have escaped!".bold
 	break

 elsif action.downcase == "c"
 	if hp <10
 	puts "You have catched the Pokemon".bg_purple
 	pokemon_is_wild = false
 	break
 	else
 	puts "Pikachu has escaped!".bg_red
 	break
	end
elsif action.downcase =="a"
		magikarp = Magikarp.new
		mag_hp = 100
		until mag_hp<=0 || hp <=0
			mag_dmg = rand(50)
			mag_hp -= mag_dmg
			magikarp.attack(mag_dmg)
			pik_dmg =rand(50)
			hp -= pik_dmg
			new_pokemon.attack(pik_dmg)
			if mag_hp <0 
				puts "Magikarp lost the battle."
				puts "Pikachu has "+"#{hp}".bg_red + "HP left."
				
			else
			puts "Magikarp: "+"#{mag_hp}".bg_green
			puts "Pikachu: "+"#{hp}".bg_red
			end
		end
	end
end

if pokemon_is_wild == false
	puts "Please name your new pokemon:".bold
	new_pokemon.name=(gets.chomp)
	puts "Your name pokemon's name is: #{new_pokemon.name}"
	puts "Your name pokemon's skills are: #{new_pokemon.skills[0]}, #{new_pokemon.skills[1]}"
else
	puts "Games Over"
end

