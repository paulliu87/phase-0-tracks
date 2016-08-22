module Shout
  def yell_angrily(words)
   puts words + "!!!" + " :("
  end

  def yelling_happily(words)
  	puts words + "!!!" + " :)"
  end

end

#p Shout.yelling_happily("Nice!")
#p Shout.yell_angrily("Paul")

class Kid
	include Shout
end

class Animal
	include Shout
end

tom = Kid.new
tom.yell_angrily("John")

bear = Animal.new
bear.yelling_happily("food")