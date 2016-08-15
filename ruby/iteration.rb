=begin
ins_array = [1,2,3,4,5]
new_array = []

ins_array.each do |element|
	
	new_array.push (element*2)
	
end

p new_array

new_array = new_array.map do |element|
	element -=1
end
p new_array

new_array.map! do |element|
	
	element.to_s + " is a string now! "
end


ins_hash = {
  name: "Anishka Clarke", 
  address: "1451 Broadway Avenue, New York, NY", 
  email: "anishka@interiordesigngeniuses.com", 
  phone:"435", 
  fave_blue: "indigo", 
  ombre: "Practically medieval in its appalling irrelevance"
}


new_hash = {}
ins_hash.each do |key,value|
	value = value.upcase
	new_hash[key] = value
end
p new_hash

new_hash.map do |key,value|
	new_hash[key] = "!" + value + "!"
end


p new_array
p new_hash

=end
#Release 2
#filter but not change the reginal array
def remove_num_less5(arr,num)
	new_arr =[]
	arr.each do |x|
		if x > num
		new_arr << x
		end
	end

p new_arr
end

remove_num_less5([1,2,3,4,5,6,7,8,9,10],5)

#filter and change the reginal array

def remove_num_less5(arr,num)
	new_arr =[]
	arr.each do |x|
		if x > num
		new_arr << x
		end
	end
p arr = new_arr
# new_arr
end

remove_num_less5([1,2,3,4,5,6,7,8,9,10],5)

#A different method that filters a data structure for only items satisfying a certain condition
def remove_num_less5(arr,num)
	
	p arr.select {|x| x>num}
	
end

remove_num_less5([1,2,3,4,5,6,7,8,9,10],5)


#filter and not change the hash

def remove_num_less5(ha,num)
	new_hash = Hash.new(0)
	ha.each do |x|
		if x[1] > num
		new_hash[x[0]]=x[1]
		end
	end

p new_hash
end

hash = {:first => 245,
		:second => 2342,
		:third => 243,
	
}
remove_num_less5(hash,1000)
p hash


#filter and change the hash
def keep_num_less5(ha,num)
	new_hash = Hash.new(0)
	
	ha.each do |x|
		if x[1] < num
		new_hash[x[0]]=x[1] 
		end
	end

p ha.replace( new_hash)


end

hash = {:first => 245,
		:second => 2342,
		:third => 243,
	
}
keep_num_less5(hash,1000)
p hash

#A different method that filters a data structure for only items satisfying a certain condition

def remove_num_less5(ha,num)
	new_hash = Hash.new(0)
	ha.each do |x,y|
		if y > num
		new_hash[x]=y
		end
	end

p new_hash
end

hash = {:first => 245,
		:second => 2342,
		:third => 243,
	
}
remove_num_less5(hash,1000)
p hash

