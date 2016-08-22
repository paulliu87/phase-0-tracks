module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
  	puts"Hello World!!!!"+words
  end

end

p Shout.yelling_happily("Nice!")
p Shout.yell_angrily("Paul")