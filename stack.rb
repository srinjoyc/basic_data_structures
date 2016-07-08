class Stack
  
  attr_reader :array
  
  def initialize(size = 1)
    @array = Array.new(size)
  end 

  def extendedArray(array)
   new_array = Array.new(array.length+1)
   for i in 0..array.length-1
      new_array[i] = array[i]
   end
   new_array
  end

  def decreaseArray(array)
   new_array = Array.new(array.length-1)
   for i in 0..new_array.length-1
       new_array[i] = array[i]
   end
   new_array
  end 

  def push(value)
    last_index = @array.length-1
    if(@array[last_index] == nil)
      @array[last_index] = value
    else
       @array = extendedArray(@array)
       @array[@array.length-1] = value
    end
    return @array 
  end

  def pop
     last_index = @array.length-1
     @array[last_index] = nil
     @array = decreaseArray(@array) 
  end

  def peek
    @array[@array.length-1]
  end  

end 

stack = Stack.new()
stack.push(3)
stack.push(5)
puts stack.inspect
stack.pop
puts stack.inspect
puts stack.peek
