require './lib/node'
require 'pry'

class LinkedList
  attr_reader :head,
              :next_node,
              :count,
              :content

  def initialize
    @head = nil
    @count = 0
    @content = []
  end

  def append(data)
    if @head.nil?
      @head = Node.new(data)
    else
      current_node = @head
        until current_node.next_node == nil
          current_node = current_node.next_node
        end
      current_node.next_node = Node.new(data)
    end
    @count += 1
    @content << data
  end

  # def add_node_to_list (current_node, new_node)
  # if current_node.next_node.nil?
  #   current_node.next_node = next_node
  # else
  #   call add_node(current_node.next_node, new_node)
  # end

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
  # Option 2 for find method is: @content[position, num].join(" ")

  def include?(data)
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
  #Option 2 for include? method is: @content.index(data) != nil
  end

  def pop
    current_node = @head
      until current_node.next_node.next_node == nil
        current_node = current_node.next_node
      end
    deleted_node = current_node.next_node.data
    current_node.next_node = nil
    @content.pop
    deleted_node
  end

end
