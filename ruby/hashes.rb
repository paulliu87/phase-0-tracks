


client={}

puts "Please enter client's name:"
client[:name] =gets.chomp.to_s
puts "Please enter client's age:"
client[:age] =gets.chomp.to_i
puts "Please enter client's address:"
client[:address] =gets.chomp.to_i
puts "Please enter client's email:"
client[:email] =gets.chomp.to_s
puts "Please enter client's phone number:"
client[:phone] =gets.chomp.to_i
puts "Please enter if client has pets:"
input =gets.chomp
def true_false(str)
if str == "true"
  reture true
elsif str == "false"
   reture false
else
  reture nil
end
end
client[:has_pet] = true_false(input)

puts "Please enter the number of children that client has:"
client[:number_of_children] =gets.chomp.to_i
puts "Please enter decor theme:"
client[:decor_theme] =gets.chomp


p client
#client = {
 # name: "Anishka Clarke", 
  #age: "",
  #number_of_children: "",
  #decor_theme: "",

  #address: "1451 Broadway Avenue, New York, NY", 
  #email: "anishka@interiordesigngeniuses.com", 
  #phone: nil, 
  #fave_blue: "indigo", 
  #likes_paisley: true, 
  #likes_chevrons: false, 
  #likes_photorealistic_woods: false, 
  #likes_abstract_woods: true, 
  #ombre: "Practically medieval in its appalling irrelevance"
#}