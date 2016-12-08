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

  def test_it_displays_linked_list_head
    jb = JungleBeat.new
    assert_equal nil, jb.list.head
  end

  def test_it_can_add_data_to_list
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    assert_equal "deep", jb.list.head.data
    assert_equal "doo", jb.list.head.next_node.data
  end

  def test_it_can_add_different_data_to_list
    jb = JungleBeat.new
    jb.append("woo hoo shu sham ding")
    assert_equal "woo", jb.list.head.data
    assert_equal "hoo", jb.list.head.next_node.data
    assert_equal 5, jb.list.count
  end

  def test_it_can_count_elements_of_list
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    jb.append("woo hoo shu")
    assert_equal 6, jb.count
  end

  def test_it_can_play_beats_list
    jb = JungleBeat.new
    jb.append("deep doo ditt woo hoo shu")
    assert_equal 6, jb.list.count
    assert_equal 6, jb.count
    jb.start_speech
  end

  def test_it_can_play_different_speeds
    jb = JungleBeat.new
    jb.append("deep dop dop deep")
    assert_equal 500, jb.rate
    jb.rate = 100
    assert_equal 100, jb.rate
  end

  def test_it_can_play_different_voices
    jb = JungleBeat.new
    jb.append("deep dop dop deep")
    assert_equal "Boing", jb.voice
    jb.voice = "Alice"
    assert_equal "Alice", jb.voice
  end

  def test_it_can_reset_speed
    jb = JungleBeat.new
    jb.append("deep dop dop deep")
    jb.rate = 100
    assert_equal 100, jb.rate
    jb.reset_rate
    assert_equal 500, jb.rate
  end

  def test_it_can_reset_voice
    jb = JungleBeat.new
    jb.append("deep doo ditt woo hoo shu")
    jb.voice = "Alice"
    assert_equal "Alice", jb.voice
    jb.reset_voice
    assert_equal "Boing", jb.voice
  end
end
