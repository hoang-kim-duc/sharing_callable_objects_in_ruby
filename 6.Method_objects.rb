class C
  def val
    @number
  end

  def talk
    @number = 100
    puts "Method-grabbing test! self is #{self}."
  end
end

c = C.new
mt = c.method(:talk)
# mt.call
# puts mt.owner

# mt.()
# mt[]
