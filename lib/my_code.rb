# Your Code Here
def map (array) 
  i=0
  new_array = []
  while i < array.length
    new_array << yield(array[i]) 
    i += 1 
  end
  new_array
end




def reduce (list,sv=nil)

  if (sv)
    sum = sv
    i=0
  else
    sum = list[0]
    i=1
  end

  while i < list.length
    sum = yield(sum, list[i])
    i += 1
  end
  sum
end