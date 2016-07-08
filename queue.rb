class Queue
  
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
   for i in 1..new_array.length
       new_array[i-1] = array[i]
     end 
   new_array
  end 

  def enqueue(value)
    last_index = @array.length-1
    if(@array[last_index] == nil)
      @array[last_index] = value
    else
       @array = extendedArray(@array)
       @array[@array.length-1] = value
    end
    return @array 
  end

  def dequeue
     @array[0] = nil
     @array = decreaseArray(@array) 
  end

  def peek
    @array[0]
  end  

end 

q = Queue.new()
q.enqueue(5)
puts q.inspect
q.enqueue(5)
q.enqueue(6)
puts q.inspect
q.dequeue
puts q.inspect
puts q.peek
