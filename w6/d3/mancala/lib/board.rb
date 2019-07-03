class Board
  attr_accessor :cups

  def initialize(name1, name2)
    # @cups = Hash.new {|h,k| h[k] = []}  
    @cups = Array.new(14) { [:stone, :stone, :stone, :stone] }  
    # cups.place_stones
    # self.cups.each {|cup| 5.times{cup << :stone}}
  end

  def place_stones
    # (0..13).to_a.each{|nums| (1..4).to_a.each {|n|a[nums]<< n } if num != 6 || num != 13}
    # helper method to #initialize every non-store cup with four stones each
    self.cups.each {|cup| cup + [:stone, :stone, :stone, :stone]}
  end

  def valid_move?(start_pos)
  end

  def make_move(start_pos, current_player_name)
  end

  def next_turn(ending_cup_idx)
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
