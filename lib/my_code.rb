# Your Code Here
def map(array)
  index = 0
  new_array = []
  while array[index]
    new_array.push(yield(array[index]))
    index += 1
  end
  new_array
end

def reduce(array, sv=nil)
  if sv
    sum = sv
    i = 0
  else
    sum = array[0]
    i = 1
  end
  while i < array.length
    sum = yield(sum, array[i])
    i += 1
  end
  sum
end