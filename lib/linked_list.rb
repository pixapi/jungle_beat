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
    @content = ""
  end

  def append(data)
    @count += 1
    @content += data
    if @head == nil
      @head = Node.new(data)
    else
      # node = @head
      # until node.next_node == nil
      #   node = node.next_node
      # end
      node.next_node = Node.new(data)
    end
  end

  def to_string
    @content
  end
end
