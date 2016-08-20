=begin
Input : nothing
Step1: define class Puppy with attribute of name
Step2: define a instance method that gives a random type of dog
Step3: initialize an array with some pets' names
Step4: initialize class Puppy and store them into an array
Output: a table of puppies' name, class name, and type of dog
=end





class puppy           
	attr :name
	def initialize (name)
		@name = name
	end
	#define a instance method gives randome type
	def type
	puppy_type = ["Alaskan Malamute","Basenji","Black and Tan Coonhound","Chinese Shar-Pei","German Shepherd Dog"]
	puppy_type[rand(4)]
	end
	
end

puppies = ["Eden","Malvyn","Purr","Darcell","Morold"]

convert_string_to_class= puppies.map {|name| Puppy.new(name)}

convert_string_to_class.each do |puppy| 
	print puppy.name, " ",
	puppy.class, " ",
	puppy.type, "\n"
end

















=begin
	
some test code here

puppy_name = ["Eden","Malvyn","Purr","Darcell","Morold"]

#puppy_type = ["Alaskan Malamute","Basenji","Black and Tan Coonhound","Chinese Shar-Pei","German Shepherd Dog"]

class Puppy
	def type
	puppy_type = ["Alaskan Malamute","Basenji","Black and Tan Coonhound","Chinese Shar-Pei","German Shepherd Dog"]
	puppy_type[rand(4)]
	end

end

new_pyp = puppy_name.map {|dog| dog = Puppy.new}

puts puppy_name
puts new_pyp

puppy_name.each {|name| puts "#{name.class}", " ", "#{name}"}

new_pyp.each {|name| puts "#{name.class}", " ", "#{name}" }

Array[puppy_name.zip(puppy_name.map {|dog| dog = Puppy.new})]


=end