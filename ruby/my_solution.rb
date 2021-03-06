# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#Refer to a file relative to the current file
#
#require: a full path to the file is required
#require_relative: current file directory is default

require_relative 'state_data'

class VirusPredictor

#initialize the object with three instance variables which assigned by the parameters.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#define instance method that takes no paraments

  def virus_effects
      puts "#{@state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{speed_of_spread} months.\n\n"    
  end
#define private method that does not expose to the public API
  private
#instace method with 3 parameters, and calculate the number of death base on the population density. 
#Print outs the result of it.
  def predicted_deaths    
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = 0.4
    elsif @population_density >= 150
      number_of_deaths = 0.3
    elsif @population_density >= 100
      number_of_deaths = 0.2
    elsif @population_density >= 50
      number_of_deaths = 0.1
    else
      number_of_deaths = 0.05
    end
    (number_of_deaths*@population).floor
  end
#instance method takes 2 parameters, and calculate the speed of spread.
#prints out the result.
  def speed_of_spread  
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end
    speed

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

#create an instance virus predictor by using the consatant of STATE_DATA 
=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#calling instance method of virus effect on instance of a class
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

STATE_DATA.each do |state,pop_hash|
  new_state = VirusPredictor.new(state,pop_hash[:population_density],pop_hash[:population])
  new_state.virus_effects
end


#=======================================================================
# Reflection Section

