class Node
  attr_accessor :data,
                :next_node

  def initialize(data)
    @data = data
    @next_node = nil #this is an object, each node contains next node object
  end
end
