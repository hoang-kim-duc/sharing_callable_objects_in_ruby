pr = Proc.new {|x| p x}
pr.call
pr.call "Hello World"
pr.call "Hello", "World"
