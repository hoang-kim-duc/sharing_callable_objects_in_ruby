# 1) eval
# def use_a_binding(b)
#   eval("puts str", b)
# end

# str = "I'm a string in top-level binding!"
# use_a_binding(binding)

# 2) instance_eval
class C
  def initialize
    @x = 1
  end

  def m1
    @x = 2
  end
end

c = C.new
c.m1
c.instance_eval {puts @x}


# string = "A sample string"
# string.instance_exec("s") {|delim| self.split(delim) }

# 2) QUIZ
# class Person
#   def initialize &block
#     # block.call # A)
#     # instance_eval &block # B)
#   end

#   def name name = nil
#     @name ||= name
#   end

#   def age age = nil
#     @age ||= age
#   end

#   def khaibaoyte
#     puts "name: #{name}, age: #{age}"
#   end
# end

# joe = Person.new do
#   name "Joe"
#   age 37
# end

# joe.khaibaoyte
