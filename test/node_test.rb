require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class NodeTest < Minitest::Test

  def test_node_holds_data
    node = Node.new("plop")
    assert_equal Node, node.class
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
