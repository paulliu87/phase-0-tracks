puts "How many employees?"
num_employee = gets.chomp

while num_employee.to_i != 0

puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp
puts "What year were you born?"
year_born = gets.chomp
puts "Our company cafeteria serves garlic bread. Should we order some for you?"
like_garlic = gets.chomp
puts "Would you like to enroll in the company’s health insurance?"
need_insurance = gets.chomp
puts "Please enter any allergies you have."
allergies =[]

jump = nil

while true
  input = gets.chomp
  if (input=="sunshine")
  	jump = true
  end
  break if ((input == "done")||(input=="sunshine"))

  allergies << input
end
#puts "allergies list " + allergies.join(", ")

if (age.to_i <= 100) && ((like_garlic.downcase == "yes")||(need_insurance.downcase=="yes"))&&(jump!=true)
	puts "Probably not a vampire."
elsif ((age.to_i >= 100) && ((like_garlic.downcase == "no")||(need_insurance.downcase=="no")))||(jump==true)
	puts "Probably a vampire."
elsif (age.to_i >= 100) && ((like_garlic.downcase == "no")&&(need_insurance.downcase=="no"))
	puts "Almost certainly a vampire."
elsif ((name.downcase == "drakecula")||(name.downcase == "tu fang"))
	puts "Definitely a vampire."
else
	puts "Results inconclusive."
end
num_employee = num_employee.to_i - 1
 puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
end