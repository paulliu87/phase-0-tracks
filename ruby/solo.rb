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






 class Pikachu
 	attr_reader :name,:skills
 	def initialize(name = "Pikachu")
 		@name = name
 		@skills = ["bolt","bit"]

 	end

 	def attack 
 		puts "Pikachu used #{skills[rand(2)]}"
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

 	def attack 
 		puts "Magikarp used #{skills[rand(2)]}"
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
 while hp > 0
 	puts "What would you like to do:"
 	puts "A. Magikarp, attack!" 
 	puts "B. Escape!"
 	puts "C. Catch!"
	action = gets.chomp
 if action.downcase == "b"
 	puts "You have escaped!"
 	break

 elsif action.downcase == "c"
 	if hp <10
 	puts "You have catched the Pokemon"
 	break
 	else
 	puts "Pikachu has escaped!"
 	break
	end
elsif action.downcase =="a"
		magikarp = Magikarp.new
		mag_hp = 100
		until mag_hp<=0 || hp <=0
			magikarp.attack
			mag_hp -= rand(50)
			new_pokemon.attack
			hp -= rand(50)
			puts "Magikarp: #{mag_hp}"
			puts "Pikachu: #{hp}"
		end
	end
end

