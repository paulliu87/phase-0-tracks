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

encrypt("ajfdajnadlal")











