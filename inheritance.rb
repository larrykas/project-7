########################################################
# Inheritance Number: 6
########################################################
class Vehicle  
  def wheels_1 
    puts "This is a 2WD Vehicle " + "Automatic Transmission"
     
  end  
  def wheels_2  
    puts "This is a 4WD Vehicle " + "Manual" 
  end  
end  
  
class Car < Vehicle  
  def eats  
    puts "Runs on Gas."  
  end  
end  
class Trunk < Vehicle  
  def eats  
    puts "Runs on Disel"  
  end  
end  
ford = Car.new  
ford.wheels_1 
ford.eats 

ford = Trunk.new  
ford.wheels_2 
ford.eats 

#########################################################
# Override Number: 
#########################################################
class A  
  def a  
    puts 'This is class A'  
  end  
end  
  
class B < A  
  def a  # Overrides the method 'a' in class 'A'
    puts 'This is class B'  
  end  
end  
  
b = B.new  
b.a  # returns an override of the method 'a' in class 'A' which is "This is class B"


########################################################
# superride
########################################################
class Bicycle  
  attr_reader :gears, :wheels, :seats  
  def initialize(gears = 3)  
    @wheels = 2  
    @seats = 2  
    @gears = gears  
  end  
end  
  
class Tandem < Bicycle  
  def initialize(gears)  
    super  
    # @seats = 1  
  end  
end  
t = Tandem.new(2)  
puts t.gears  
puts t.wheels  
puts t.seats  
b = Bicycle.new  
puts b.gears  
puts b.wheels  
puts b.seats  

