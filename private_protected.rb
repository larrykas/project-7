# In Ruby, the primary difference between a private and a protected method is that a private method... 
# cannot be called with an explicit receiver, while a protected method can.

# An explicit receiver is the object that is receiving a message. In the following code, we have a receiver (“parent”)... 
# and a method (“get_name”). The “parent” object is receiving the instruction to perform the “get_name” method.

# The following code illustrates that a private method cannot be called by an explicit receiver:

########################################################
# private method
########################################################
class Parent
  private
  def name
    'Mommy'
  end
end

class Child < Parent
  def get_parent_name
    # Implicit receiver
    puts name

    # Explicit receiver
    puts self.name rescue puts 'NoMethodError'

    # Explicit receiver
    puts Parent.new.name rescue puts 'NoMethodError'
  end
end

Child.new.get_parent_name # this line returns the output below
# => Mommy
# => NoMethodError
# => NoMethodError
# The following code is a duplicate of the above but this time instead of using the privated method ...
# I have decided to use the protected method and the output is different.
######################################################
# protected method
######################################################
class Parent
  protected
  def name
    'Mommy'
  end
end

class Child < Parent
  def get_parent_name
    # Implicit receiver
    puts name

    # Explicit receiver
    puts self.name rescue puts 'NoMethodError'

    # Explicit receiver
    puts Parent.new.name rescue puts 'NoMethodError'
  end
end

Child.new.get_parent_name # Now this line of code returns the following output.
# => Mommy
# => Mommy
# => Mommy
# The later code illustrates that a protected method can be called by an explicit receiver unlike the private method...
# as demonstrated in the first example.
