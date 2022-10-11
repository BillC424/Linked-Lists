class LinkedList

  attr_accessor :name

  def initialize
    @head = nil
    @tail = nil
  end 

  def append(value)
    Node.new(value)
  end

  def prepend(value)
    
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

