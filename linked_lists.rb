# frozen_string_literal: true

class LinkedList
  def initialize
    @head = nil
  end

  def append(value)
    new_node = Node.new(value)
    @head = new_node if @head.nil?
    current_node = @head
    return if current_node.next_node.nil?

    until current_node.next_node.nil?
      current_node = current_node.next_node
      return current_node.next_node = new_node if current_node.next_node.nil?
    end
  end

  def prepend(value)
    new_node = Node.new(value)
    new_node.next_node = @head unless @head.nil?
    @head = new_node
  end

  def size
    size = 0
    return if @head.nil?

    current_node = @head
    until current_node.next_node.nil?
      current_node = current_node.next_node
      size += 1
      size += 1 if current_node.next_node.nil?
    end
    size
  end

  attr_reader :head

  def tail
    return @head if @head.nil?

    current_node = @head
    until current_node.next_node.nil?
      current_node = current_node.next_node
      return current_node if current_node.next_node.nil?
    end
  end

  def at(index)
    list_index = 0
    current_node = @head
    until current_node.next_node.nil?
      return current_node if list_index == index

      current_node = current_node.next_node
      list_index += 1
    end
  end

  def pop
    current_node = @head
    if current_node.next_node.nil?
      @head = @head.next_node
    else
      current_node = current_node.next_node until current_node.next_node.next_node.nil?
      current_node.next_node = current_node.next_node.next_node
    end
    p self
  end

  def contains?(value)
    current_node = @head
    until current_node.next_node.nil?
      return true if current_node.value == value

      current_node = current_node.next_node
    end
    false
  end

  def find(value)
    index = 0
    current_node = @head
    until current_node.next_node.nil?
      return index if current_node.value == value

      current_node = current_node.next_node
      index += 1
    end
    nil
  end

  def to_s
    string = ''
    current_node = @head
    until current_node.next_node.nil?
      string += "( #{current_node.value} ) -> "
      current_node = current_node.next_node
      string += "( #{current_node.value} ) -> nil" if current_node.next_node.nil?
    end
    p string
  end
end

class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end
