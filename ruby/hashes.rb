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