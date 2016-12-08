require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'

class LinkedListTest < Minitest::Test

  def test_it_can_create_lists
    list = LinkedList.new
    assert_instance_of LinkedList, list
  end

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
    assert_equal "doop", list.head.data
  end

  def test_it_can_add_different_data_to_list
    list = LinkedList.new
    list.append("deep")
    assert_equal "deep", list.head.data
  end

  def test_next_node_to_head_is_nil
    list = LinkedList.new
    list.append("doop")
    assert_equal nil, list.head.next_node
  end

  def test_it_displays_number_elements_of_list
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    assert_equal 2, list.count
  end

  def test_it_displays_all_elements_of_list
    list = LinkedList.new
    assert_equal "", list.to_string
    list.append("doop")
    list.append("deep")
    assert_equal "doop deep", list.to_string
  end

  def test_it_can_also_add_data_to_front_of_list
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    assert_equal "dop plop suu", list.to_string
  end

  def test_it_can_also_insert_data_in_a_positon_of_list
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1, "woo")
    assert_equal "dop woo plop suu", list.to_string
  end

  def test_it_can_find_elements_in_list
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    assert_equal "shi", list.find(2,1)
    assert_equal "woo shi shu", list.find(1,3)
  end

  def test_it_can_verify_list_includes_an_element
    list = LinkedList.new
    list.append("blop")
    list.append("deep")
    list.append("shu")
    assert list.include?("deep")
    refute list.include?("dep")
  end

  def test_it_can_delete_elements_from_end_of_list
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    assert_equal "deep woo shi shu blop", list.to_string
    assert_equal "blop", list.pop
    assert_equal "shu", list.pop
    assert_equal "deep woo shi", list.to_string
  end

end
