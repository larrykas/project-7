#####################################################
# class variable has 2@ signs
#####################################################
class Movie
  @@like = 0
  def initialize(name, actor, duration)
    @name     = name
    @artist   = actor
    @duration = duration
    @like   = 0
  end
#####################################################
# instance variable.
#####################################################
  def like
    @like += 1
    @@like += 1
    " #@like like this Movie. Total #@@like like."
  end
end

s1 = Movie.new("Movie1", "Actor1", 234)# test songs..
s2 = Movie.new("Movie2", "Actor2", 345)
s1.like
s2.like
s1.like
s1.like
#####################################################
# class method
#####################################################
