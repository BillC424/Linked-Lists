class LinkedList

    def initialize
      @head = nil
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
      size = 0
      return if @head == nil
      current_node = @head
      while current_node.next_node != nil
        current_node = current_node.next_node
        size += 1
        size += 1 if current_node.next_node == nil
      end
      size
    end 
  
    def head
      @head
    end 
  
    def tail 
      return @head if @head == nil
      current_node = @head
      while current_node.next_node != nil
        current_node = current_node.next_node
        return current_node if current_node.next_node == nil
      end
    end 
  
    def at(index)
      list_index = 0
      current_node = @head
      while current_node.next_node != nil
        return current_node if list_index == index
        current_node = current_node.next_node
        list_index += 1
      end
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
  list.prepend(2)
  list.prepend(1)
  list.append(4)
  p list.at(2)
  
  
  
  