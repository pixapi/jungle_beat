require './lib/node'
require 'pry'

class LinkedList
  attr_reader :head,
              :data,
              :next_node,
              :count

  def initialize
    @head = nil
    @count = 0
    @content = []
  end

  def append(data)
    @count += 1
    @content << data
    if @head == nil
      @head = Node.new(data)
    else
      node = @head
      until node.next_node == nil
        node = node.next_node
      end
      node.next_node = Node.new(data)
    end
  end

  def to_string
    @content.join(" ")
  end

  def prepend(data)
    @count += 1
    @content.unshift(data)
    if @head != nil
      @head.next_node = Node.new(data)
      @head.next_node = @head.data
    end
    @head = Node.new(data)
  end

  def insert(position, data)
    current_node = @head
    index = 0
    until (index+1) == position
      current_node = current_node.next_node
      index += 1
    end
    new_node = Node.new(data)
    current_node.next_node = new_node
    @count += 1
  end
end
