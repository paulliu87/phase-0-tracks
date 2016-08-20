<<<<<<< HEAD



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
=======
client = {}


puts "Please enter client's name:"
client[:name] = gets.chomp
puts "Please enter client's age:"
client[:age] = gets.chomp.to_i
puts "Please enter number of children client has:" 
client[:number_children] = gets.chomp.to_i
puts "Please enter if client lives pets:"

if gets.chomp.downcase == "yes"
  client[:likes_pets] = true
else
  client[:likes_pets] =false
end
puts "Please enter decor theme:"
client[:decor_theme] = gets.chomp


#p client.length
#p client.class
#p client[:age].class
#p client.keys[0].to_s
client.each { |a| print "#{a[0]}      #{a[1]}     #{a[1].class}", "\n"}

p ""

puts "Woudl you like to change anything before exit?"
input_key = gets.chomp


i =0
while (i <= (client.length-1))&&(input_key!="none") 
  if client.keys[i].to_s==input_key
    if client[client.keys[i]].class.to_s == "Fixnum"
      puts "What would you like to replace with:"
      client[client.keys[i]] = gets.chomp.to_i
    elsif client[client.keys[i]].class.to_s == "String"
      puts "What would you like to replace with:"
      client[client.keys[i]] = gets.chomp
    elsif (client[client.keys[i]].class.to_s == "FalseClass")||(client[client.keys[i]].class.to_s == "TrueClass")
        puts "What would you like to replace with:"
        
        if gets.chomp.downcase =="yes"
          client[client.keys[i]] = true
        else
          client[client.keys[i]] = false
        end
    else
      client[client.keys[i]] = nil
    end
  elsif input_key == "none"
    break
  end
  i = i+1
end
    
#client.each.with_index {|x,i| if x[0] == input_key
#               x[1] = input_value
#             end
#             print i,x
#}
#client[:input_key] = input_value
#p client.index()
#p client.index[0]

client.each { |a| print a[1].class,"   #{a[0]}     #{a[1]} ","\n"}
>>>>>>> 1894040b225e3ca5babaf0ad230f4270b46315c5
