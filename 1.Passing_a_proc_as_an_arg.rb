def capture_block(&block) #receive block and convert to proc, => no argument
  block.call
end

# 1) Arg is a block
# capture_block {puts "I'm a block"}

# 2) Arg is a proc
# p = Proc.new {puts "This proc argument will serve as a code block."}
# capture_block &p

# 3) Arg is a symbol
# 3.1) built-in

# 3.2) Overide to_proc
class Symbol
  def to_proc
    puts "Hello from to_proc"
    Proc.new {|object| object.send self }
  end
end

puts proc.call("expected to be capitalize")
