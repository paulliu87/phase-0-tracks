ins_array = [1,2,3,4,5]
new_array = []
ins_hash = {
  name: "Anishka Clarke", 
  address: "1451 Broadway Avenue, New York, NY", 
  email: "anishka@interiordesigngeniuses.com", 
  phone:"435", 
  fave_blue: "indigo", 
  ombre: "Practically medieval in its appalling irrelevance"
}

new_hash = {}

p new_array
p new_hash

ins_array.each do |element|
	3.times{
	new_array.push ((65 + rand(25)).chr)
	}
end

ins_hash.each do |key,value|
	value = value.upcase
	new_hash[key] = value
end
p new_array
p new_hash