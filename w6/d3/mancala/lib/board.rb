require_relative 'player'
class Board
  attr_accessor :cups
require "byebug"
  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2 
    # @cups = Hash.new {|h,k| h[k] = []}  
    @cups = Array.new(14) { [] }  
    # cups.place_stones
    place_stones #{|cup| 5.times{cup << :stone}}
  end

  def place_stones
    # debugger
    # (0..13).to_a.each{|nums| (1..4).to_a.each {|n|a[nums]<< n } if num != 6 || num != 13}
    # helper method to #initialize every non-store cup with four stones each
    @cups.each_with_index {|cup,i| 4.times{@cups[i] << :stone unless [6,13].include?(i) }}
  end

  def valid_move?(start_pos)
    raise "Starting cup is empty" if start_pos == 0
    raise "Invalid starting cup" unless (1..14).to_a.include?(start_pos)
    
  end

  def make_move(start_pos, current_player_name)
    # debugger
    i = start_pos + 1
    j = 0
    a = (current_player_name == @name1 ? 13 : 6 )

    while j < @cups[start_pos].length 
      # 
      if i != a 
        @cups[13 % i] << :stone
         i += 1
         j += 1
      else
        i +=1
      end
    end
    @cups[start_pos] = []
    render
    next_turn(i)
  end

  def next_turn(ending_cup_idx)
    # debugger
  return :switch if @cups[ending_cup_idx].length == 1
  return :prompt

  
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
