class LinkedList

  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end 

  def append(value)
    new_node = Node.new(value)
    return @head = new_node if @head = nil 
    current_node = @head
    while current_node != nil
      current_node = curren_node.next  
    end
  end

  def prepend(value)
    new_node = Node.new(value)
    new_node.next_node = @head.value
    @head = new_node
  end

  def size

  end 

  def head

  end 

  def tail 

  end 

  def at(index)

  end 

  def pop
    
  end 

  def contains?(index)

  end 

  def find(value)

  end 

  def to_s

  end 


end

class Node

  attr_accessor :value, :next_node  

  def initialize(value = nil, next_node = nil)  
    @value = value
    @next_node = next_node
  end

end

