class LinkedList

    def initialize
      @head = nil
      @tail = nil
    end 
  
    def append(value)
      #creates node
      new_node = Node.new(value)
      #adds node to head variable if empty
      @head = new_node if @head == nil 
      #assigns @head value to current node local variable
      current_node = @head
      #exit method if there's only one node 
      return if current_node.next_node == nil
      #loop to iterate through linked list 
      while current_node.next_node != nil
        current_node = current_node.next_node
        if current_node.next_node == nil
          current_node.next_node = new_node
        end
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
  
  list.append(44)
   list
  list.prepend(55)
   list
  list.prepend(66)
   list
  list.append(77)
   p list
  
  
  
  