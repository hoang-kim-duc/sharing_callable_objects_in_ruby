# 1) number of args rule
# lam = lambda {|x| p x}
# lam.call "Hello World"
# lam.call "Hello", "World"

# 3) Return
def return_test
  l = lambda {return}
  l.call
  puts "Still here!"
  p = Proc.new {return}
  p.call
  puts "You won't see this message!"
end

return_test
