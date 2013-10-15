#####################################################
# class variables and instance variable Number: 1
#####################################################
class Movie
  @@MovieList = 0
  def initialize(name, actor, duration)
        @name     = name
        @artist   = actor
        @duration = duration
        @MovieList = 0
        
        movie1 = Movie.new("Blue Caprice","Alexandre Moors", 120)
        movie2 = Movie.new("Informant", "Jamie Meltzer's", 240)
        
end 
end

####################################################
# class method Number: 2
####################################################
class Movie
  def self.time(duration)
    puts "This movie is #{duration} minutes long." 
  end
end
Movie.time() # returns 'This movie is 180 minutes long
####################################################
# instance method Number: 2
####################################################
class Movie
  def time(duration = 180)
    puts "The trailer for this movie is #{duration}long." 
  end
end

Movie.new.time() # "instance method"
