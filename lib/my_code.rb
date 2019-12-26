def map(array)
new=[]
counter=0 
while counter<array.length 
  new.push(yield array[counter])
  counter += 1
end
new
end


def reduce(array,starting=nil)
  if starting
    num1=starting
    counter=0 
  else
    num1=array[0]
    counter=1
  end
    
    while counter<array.length
   num1= yield(num1,array[counter])
  counter+=1
end
num1
end