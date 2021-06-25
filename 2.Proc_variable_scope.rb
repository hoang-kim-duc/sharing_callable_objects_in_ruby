m = "From scope where proc created"
proc = Proc.new{puts m}

m = "From scope where proc created but CHANGED"
# proc.call

def func proc
  m = "From fucntion scope"
  proc.call
end
func proc
