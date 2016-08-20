=begin

ask for agent'sreal name
store the name into  a variable
call for a method to switch the name
store the result 
call for another method to change all vowels to the next vowel
call for a method to change all to consonants to the next in the alphabet
Capitalize first letter
print a message to show the changes of name

=end

puts "Please enter your real name?"
real_name = gets.chomp

def swtich_place(str)
	arr = []
	arr = str.split.reverse
#	p arr
	new_str = ""
	arr.each{|word| new_str+="#{word} "}
	new_str.chop
end

def change_vowel(str)
	vowel = "aeiou"
	arr = []
	
	str.each_char{|x| arr.push(x)}
	
	new_str =""
	arr.each.with_index do |letter,i|
		if letter == "u"
			new_str[i] = "a"
		#	p "#{letter}   #{new_str}"
		elsif letter == " "
			new_str[i] = " "
		#	p "#{letter}   #{new_str}" 
		elsif vowel.include? letter
			
			new_str[i] = vowel[vowel.index(letter)+1]
		#	p "#{letter}   #{new_str}"
		else
			new_str[i]=arr[i]
		#	p "#{letter}   #{new_str}"
		end
	
	end
	 new_str
end	

def change_cons(str)
	alphabits = "bcdfghjklmnpqrstvwxyz"
	arr = []
	
	str.each_char{|x| arr.push(x)}
	
	new_str =""
	arr.each.with_index do |letter,i|
		
		if letter == "z"
			new_str[i] = "b"
		elsif alphabits.include? letter
			new_str[i] = alphabits[alphabits.index(letter)+1]
		elsif letter == " "
			new_str[i] = " "
		#	p "#{letter}   #{new_str}" 
		else
			new_str[i]=arr[i]
		#	p "#{letter}   #{new_str}"
		end
	
	end
	 new_str
end	

def cap_name(str)
	arr = str.split
	new_str = ""
	arr.each{|word| new_str+="#{word.capitalize} "}
	 new_str.chop
end

step_one = swtich_place(real_name.downcase)
step_two = change_vowel(step_one)
step_three = change_cons(step_two)
fake_name = cap_name(step_three)

puts "#{fake_name} is actually #{real_name}!"


