class Santa

	attr_accessor  :gender, :ethnicity, :reindeer_ranking, :age
	def initialize(gender,ethnicity,age =0)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = age
		puts "Initializing Santa instance ..."
	end
#getter
=begin
	def name
		@name
	end
	def gender
		@gender
	end
=end

#setter
=begin
	def name=(new_name)
		@name = new_name
	end
=end
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!}"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(name)
		@reindeer_ranking.delete(name)
		@reindeer_ranking.push(name)
	end



end

#example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
#example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

10.times do 
	example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
	example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
	new_santa = Santa.new(example_genders[rand(7)],example_ethnicities[rand(7)],rand(140))
	puts new_santa.gender
	puts new_santa.ethnicity
	puts new_santa.age
end
=begin
paul = Santa.new("female","w/e")


paul.speak
paul.eat_milk_and_cookies("snickerdoodle")
p paul.gender
p paul.age
tom = Santa.new("male","w/e",26)
p tom.gender
p tom.age



santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end


=end