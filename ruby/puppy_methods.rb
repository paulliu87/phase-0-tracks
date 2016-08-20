class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
  	puts "Woof! "*int
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(age)
  	dog_age = age * 7
  end

  def chasing_cat
  	puts "*runs and barks*"
  end
end

Spot = Puppy.new

Spot.fetch("stick")

Spot.speak(3)

Spot.roll_over

Spot.dog_years(29)

Spot.chasing_cat