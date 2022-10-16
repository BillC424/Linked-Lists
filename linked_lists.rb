class LinkedList

    def initialize
      @head = nil
      @tail = nil
    end 
  
    def append(value)
      new_node = Node.new(value)
      @head = new_node if @head == nil 
      current_node = @head
      return if current_node.next_node == nil
      while current_node.next_node != nil
        current_node = current_node.next_node
        return current_node.next_node = new_node if current_node.next_node == nil
      end
    end
  
    def prepend(value)
      new_node = Node.new(value)
      unless @head == nil then new_node.next_node = @head
      end
      @head = new_node
    end
  
    def size
    
    end 
  
    def head
      @head
    end 
  
    def tail 
      @tail
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
  
  list = LinkedList.new
  
  list.append(3)
   list
  list.prepend(2)
   list
  list.prepend(1)
   list
  list.append(4)
  p list
  
  
  
  