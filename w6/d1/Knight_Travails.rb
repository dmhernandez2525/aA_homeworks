require_relative '00_tree_node.rb'

class KnightPathFinder

    # THE TREE IS THE MOVE LIST
    def self.root_node
        # will call find_path
        @pos
    end

    def self.valid_moves(current_pos)
        # array of arrays, each is a position
        # pos = [row, col]
        return @pos if row > 9 || row < 0 || col > 9 || col < 0

        poss_moves = []
        
        start_pos = PolyTreeNode.new(current_pos)
        x = [current_pos[0] + 1,current_pos[1] + 2] 
        y = [current_pos[1] + 1 , current_pos[0] + 2]
        start_pos.add_child(x).add_child(y)
        


        # left = current_pos[
        # right = current_pos
        coordinates = [row, col]
                     
        poss_moves = [2,1], [1,2]

        coordinates.each do |pos|
             
            if row > 9 || row < 0 || col > 9 || col < 0
                raise "Invalid move. Enter in a valid position: "
            else
                "Congrats! That is a valid move!"
            end

        end


    end
    

    def initialize(start_pos) # starting in the middle
        @pos = pos
        self.root_node
        @considered_pos = [start_pos]
    end

    def build_move_tree
        # Root node, current pos
        start_pos = PolyTreeNode.new(pos)
        # Array of possible moves from current pos
        poss_moves = new_move_positions(pos)

        move_q = []
        
        first_set_moves = poss_moves.map {|child| start_pos.add_child(child)}
        first_set_moves.each do |move|
            move_q << move
        end

    end

    def find_path(target_pos)# => [2,5]

    end

    def new_move_positions(pos)
        valid_moves = self.valid_moves(pos)
        valid_moves.reject{|moves| @considered_pos.include?(moves)}
    end

end


game = KnightPathFinder.new([0,0])

p "Current Position: #{@pos}"
p "Valid moves include: #{game.valid_moves(@pos)}"