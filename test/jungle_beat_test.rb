require 'minitest/autorun'
require 'minitest/pride'
require './lib/jungle_beat'

class JungleBeatTest < Minitest::Test
  def test_it_can_create_jungle_beats
    jb = JungleBeat.new
    assert_instance_of JungleBeat, jb
  end

  def test_it_has_a_class
    jb = JungleBeat.new
    assert_equal JungleBeat, jb.class
  end

  # def test_it_displays_linked_list
  #   jb = JungleBeat.new
  #   expected = <LinkedList head=nil...>
  #   assert_equal expected, jb.list
  # end
  #see how to test this, gives errors for format of list object

  def test_it_displays_linked_list_head
    skip
    jb = JungleBeat.new
    assert_equal nil, jb.list.head
  end

  def test_it_can_add_data_to_list
    skip
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    assert_equal "deep", jb.list.head.data
    assert_equal "doo", jb.list.head.next_node.data
  end

  def test_it_can_add_different_data_to_list
    skip
    jb = JungleBeat.new
    jb.append("woo hoo shu")
    assert_equal "woo", jb.list.head.data
    assert_equal "shu", jb.list.head.next_node.data
    end
  end

  def test_it_can_count_elements_of_list
    skip
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    jb.append("woo hoo shu")
    assert_equal 6, jb.count
  end
end
