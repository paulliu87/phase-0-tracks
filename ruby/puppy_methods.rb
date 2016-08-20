class Puppy


	def initialize
		puts "Initializing new puppy instance ..."
	end

	def fetch(toy)
		puts "I brought back the #{toy}!"
		toy
	end

	def speak(int)
		puts "Woof! "*int
	end

	def roll_over
		puts "*rolls over*"
	end

	def dog_years(age)
		dog_age = age * 7
	end

	def chasing_cat
		puts "*runs and barks*"
	end
end


class Kitten

	def intialize 
		puts "new kitten has been born"
	end

	def speak(int) 
		puts "Meow! " * (int -1)
	end

	def charm
		puts "*Looks at you with adorable eyes.*"
	end

end

Snow = Kitten.new

Snow.speak(3)
Snow.charm

kittens = []
kitten_count = 0
until kitten_count == 50 
	kittens <<	Kitten.new
	kitten_count+=1
#	puts kittens

end

kittens.each {|kitten| 
kitten.speak(3)
kitten.charm}


=begin
	

Spot = Puppy.new


Spot.fetch("stick")

Spot.speak(3)

Spot.roll_over

Spot.dog_years(29)

Spot.chasing_cat

=end