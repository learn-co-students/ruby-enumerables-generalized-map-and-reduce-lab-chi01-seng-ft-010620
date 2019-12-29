# Your Code Here
def map (array) 
  new = []
  i = 0 
  while i < array.length do  
  new.push(yield(array[i]))
  i += 1 
end 
  new
end

def reduce(array, startpoint= nil)
  if startpoint 
  i = 0 
  total = startpoint 
else
  i = 1
  total = array[0]
end 
  while i < array.length do
    total =  yield(total, array[i])
    i += 1 
  end 
  total
end 