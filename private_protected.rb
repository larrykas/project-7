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
# The following code is a duplicate of the above but this time instead of using the privated method I have decided to use the protected method and the output is different.
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
