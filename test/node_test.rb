require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require 'pry'

class NodeTest < Minitest::Test
  def test_it_exists
    assert Node.new("plop")
  end

  def test_it_has_a_class
    node = Node.new("plop")
    assert_equal Node, node.class
  end

  def test_node_holds_data
    node = Node.new("plop")
    assert_equal "plop", node.data
  end

  def test_node_holds_different_data
    node = Node.new("ding")
    assert_equal "ding", node.data
  end

  def test_next_node_is_nil_by_default
    node = Node.new("ding")
    assert_equal nil, node.next_node
  end
end

#Fuctions ITERATION 0- NODE BASICS
# > require "./lib/node"
# > node = Node.new("plop")
# > node.data
# => "plop"
# > node.next_node
# => nil
end
