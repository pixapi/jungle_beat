require './lib/linked_list'
require 'pry'

class JungleBeat
  attr_reader :list,
              :next_node
  attr_accessor :rate,
                :voice

  def initialize
    @list = LinkedList.new
    @rate = 500
    @voice = "Boing"
  end

  def append(data)
    elements = data.split(" ")

    elements.each do |element|
      list.append(element)
    end
  end

  def count
    list.count
  end

  def play
    choose_speed
  end

  def start_speech
    `say -r #{@rate} -v #{@voice} #{list.to_string}`
  end

  def choose_speed
    puts "Choose the speed of the beats play (100-500)"
    input = gets.chomp.to_i
    if input < 100 || input > 500
      choose_speed
    else
      @rate = input
    end
    choose_voice
  end

  def choose_voice
    puts "Choose the voice of the play: Boing or Alice"
    input = gets.chomp
    if input != "Boing" && input != "Alice"
      choose_voice
    else
      @voice = input
      start_speech
    end
    puts "Hope you like our beats song!"
  end

  def reset_rate
    @rate = 500
  end

  def reset_voice
    @voice = "Boing"
  end

end

if __FILE__ == $0
jb = JungleBeat.new
jb.append("deep dop dop deep")
jb.start_speech
jb.rate = 100
jb.start_speech
jb.voice = "Alice"
jb.start_speech
jb.reset_rate
jb.reset_voice
jb.start_speech
end

if __FILE__ == $0
jb = JungleBeat.new
jb.append("deep doo ditt woo hoo shu")
jb.play
end
