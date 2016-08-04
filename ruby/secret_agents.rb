

def encrypt(str)
	
	len = str.length
	out = ""
	for i in 0...len
		if str[i] == " "
			out= out + " "
		elsif str[i]=="z"
			out=out + "a"	
		
		else
		  	out =out+str[i].next
		end
	end
	out
end






def decrypt(name)
	len = name.length
	result = ""
	alphabits = "abcdefghijklmnopqrstuvwxyz"
	for i in 0 ... len
		if name[i]==" "
			result += " "
		elsif name[i]=="a"
			result+="z"
		else
			result+= alphabits[alphabits.index(name[i])-1]
		end
	end
	result
end


#encrypt("abc")
#encrypt("zed")
#decrypt("bcd")
#decrypt("abc")
#decrypt(encrypt("swordfish"))


while true
puts "Would you like to encrypt or decrypt the password?"
choice = gets.chomp
	if choice.downcase == "encrypt"
		puts "Please provide your password?"
		password = gets.chomp
		p encrypt(password)
		
	elsif choice.downcase == "decrypt"	
		puts "Please provide your password?"
		password = gets.chomp
		p decrypt(password)
	else	
		puts "Please select 'encrypt' or 'decrypt'.'\n'"
	end
end

#Encryption Method Pseudocode
#Ask user for a string
#Find the length of the string
#set up a loop ranning inside each charactor of the string
#condition check if it is a letter or space
#if it is a space keep space
#otherwise
#advance letter just 1 forward
#store the letter into a new variable
#jump to the next index
#end

#Decryption Method Pseudocode
#ask the user for a string
#find the length of the given string
#define the output variable 
#to go inside each charactor of the given string
#condition check if it is a letter or space
#if it is a space keep space
#otherwise compare the letter from given to the alphabits string
#replace the letter with alphabits letter index -1
#end

#Adding an Interface
#First we take the string and forward it by 1 letter ahead and then we decrypt it by 1 letter backwards
#it gives the original string

#ask the user for his choice of using encryption or decryption
#base on user's  choice 
#goto appropiate method
#ask user for the password
#print the result