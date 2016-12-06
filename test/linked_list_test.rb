require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'

class LinkedListTest < Minitest::Test

  def test_it_has_a_class
    list = LinkedList.new
    assert_equal LinkedList, list.class
  end

  def test_list_head_is_nil_by_default
    list = LinkedList.new
    assert_equal nil, list.head
  end

  def test_it_can_add_data_to_list
    list = LinkedList.new
    list.append("doop")
    assert_equal "doop", list.head.data #why list.data doesn't work?
  end

  def test_it_can_add_different_data_to_list
    list = LinkedList.new
    list.append("beep")
    assert_equal "beep", list.head.data #why list.data doesn't work?
  end

  def test_head_becomes_node_with_data
    skip
    # list = LinkedList.new
    # list.append("doop")
    # expected = <Node...>
    # assert_equal "doop", list.head
  end

  def test_next_node_is_nil
    list = LinkedList.new
    list.append("bang")
    assert_equal nil, list.next_node
  end

  def test_next_node_to_head_is_nil
    list = LinkedList.new
    list.append("bang")
    assert_equal nil, list.head.next_node
  end

  def test_it_displays_list
    skip
    # list = LinkedList.new
    # list.append("doop")
    # expected = <LinkedList...>
    # assert_equal expected, list
  end

  def test_it_displays_number_elements_of_list
    list = LinkedList.new
    list.append("doop")
    assert_equal 1, list.count
    list.append("beep")
    assert_equal 2, list.count
  end

  def test_it_displays_all_elements_of_list
    list = LinkedList.new
    assert_equal "", list.to_string
    list.append("doop")
    list.append("beep")
    assert_equal "doop beep", list.to_string
  end
end
