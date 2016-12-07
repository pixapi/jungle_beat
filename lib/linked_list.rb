require './lib/node'
require 'pry'

class LinkedList
  attr_reader :head,
              :next_node,
              :count

  def initialize
    @head = nil
    @count = 0
    @content = []
  end

  def append(data)
    if @head.nil?
      @head = Node.new(data)
    else
      current_node = @head #we say that the head is current node
        until current_node.next_node == nil
          current_node = current_node.next_node #a way of moving through the linkedlist
        end
      current_node.next_node = Node.new(data)
    end
    @count += 1
    @content << data
  end

  def to_string
    @content.join(" ")
  end

  def prepend(data)
    @count += 1
    @content.unshift(data)
    if @head.nil?
      @head = Node.new(data)
    else
      @head.next_node = Node.new(data)
      @head.next_node = @head.data
    end
  end

  def insert(position, data)
    current_node = @head
    index = 1
      until index == position
        current_node = current_node.next_node
        index += 1
      end
    inserted_node = Node.new(data)
    inserted_node.next_node = current_node.next_node
    current_node.next_node = inserted_node
    @count += 1
    @content.insert(position, data)
  end

  def find(position, num)
    # Option 1: @content[position, num].join(" ")
    # Option 2:
    current_node = @head
    result = ""
    position.times do
      current_node = current_node.next_node
    end
    num.times do
      result << "#{current_node.data} "
      current_node = current_node.next_node
    end
    result.rstrip
  end

  def include?(data)
    #Option 1: @content.index(data) != nil
    #Option 2:
    current_node = @head
    found = 0
    until current_node.next_node == nil
      current_node = current_node.next_node
      if data == current_node.data
        found += 1
      end
    end
    if found > 0
      true
    else
      false
    end
  end

  def pop
    current_node = @head
      until current_node.next_node.next_node == nil
        current_node = current_node.next_node
      end
    deleted_node = current_node.next_node.data
    current_node.next_node = nil
    @content.pop #necessary to do the one below and create deleted_node?
    deleted_node
  end

end
