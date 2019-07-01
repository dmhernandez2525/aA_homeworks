class Code
  
  attr_reader :pegs

  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }
  def self.valid_pegs?(chars)
    chars.all? {|ele|POSSIBLE_PEGS.key?(ele.upcase)}  
  end

  def self.random(length)#number
    random_pegs = []
    length.times {random_pegs << ["G","R","B","Y"].sample(1)}
    Code.new(random_pegs.flatten)
  end

  def self.from_string(peg_str)
    Code.new(peg_str.split(""))
  end

  def initialize(pegs)#["R","g"]
    if Code.valid_pegs?(pegs)
      @pegs = pegs.map(&:upcase)
    else
      puts pegs
      raise "that array did not contan valid pegs"
    end
  end

  def [](index)#int
    pegs[index]
  end

  def length
    pegs.length
  end

  def num_exact_matches(gess)# gess = Code.new(["g","y","b","r"]) 
    num_pegs = 0
    pegs.each_with_index {|peg,index| num_pegs += 1 if peg == gess[index]}
    num_pegs
  end

  def num_near_matches(gess)# gess = Code.new(["g","y","b","r"]) 
    num_pegs = 0
    gess.pegs.each_with_index {|peg,index| num_pegs += 1 if peg != pegs[index] && pegs.include?(peg)}
    num_pegs
  end

  def ==(outer_instance)
    self.pegs == outer_instance.pegs
  end
  
end
