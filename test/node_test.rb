require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class NodeTest < Minitest::Test

  def test_it_can_create_nodes
    node = Node.new("woo")
    assert_instance_of Node, node
  end

  def test_it_has_a_class
    node = Node.new("deep")
    assert_equal Node, node.class
  end

  def test_node_holds_data
    node = Node.new("plop")
    assert_equal "plop", node.data
  end

  def test_node_hold_one_character_data
    node = Node.new("a")
    assert_equal "a", node.data
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
