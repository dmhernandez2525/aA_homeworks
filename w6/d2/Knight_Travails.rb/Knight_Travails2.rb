require_relative '/Users/kyle/Desktop/a:A/6.24.19/a:A Online_Dailies/Pair Projects/W6D2/PolyNodeTree_Exercise2/lib/00_tree_node.rb'
require 'byebug'


class KnightPathFinder
    attr_reader :start_pos, :considered_pos 
#     MOVE_LIST = {
#         # RIGHT
#         RIGHT: [[2,1], [2,-1]],
#         # LEFT
#         LEFT: [[-2, 1], [-2, 1]],
#         # UP 
#         UP: [[1,2], [-1, 2]],
#         # DOWN
#         DOWN: [[-1,-2], [1,-2]] 
# }
    MOVE_LIST = [
        # RIGHT
        [2,1], [2,-1],
        # LEFT
        [-2, 1], [-2, 1],
        # UP 
        [1,2], [-1, 2],
        # DOWN
        [-1,-2], [1,-2]
    ]

    # THE TREE IS THE MOVE LIST

    # def self.root_node
    #     root = PolyTreeNode.new(start_pos)
    #     root
    # end

    def self.valid_moves(current_pos)
        # array of arrays, each is a position
        # current_pos = [row, col]
        
        #debugger-----------------------------------3
        all_moves = []
        #debugger-----------------------------------
        MOVE_LIST.each do |move|
            # debugger
            single_move = [(current_pos[0] + move[0]), (current_pos[1] + move[1])]
            all_moves << single_move
        end
        all_moves.reject! do |coordinates|
            coordinates[0] < 0 || coordinates[0] > 7 || coordinates[1] < 0 || coordinates[1] >7
        end
        all_moves

    end
    

    def initialize(start_pos) # starting in the middle
        #  @pos = start_pos
        @start_pos = start_pos
        @considered_pos = [start_pos]
    end

    def build_move_tree
        
        # Root node, current pos
        root_node = PolyTreeNode.new(start_pos)
        # Array of possible moves from current pos
        # debugger-----------------------------------1
        # poss_moves = new_move_positions(root_node.value)

        
        
        # first_set_moves = poss_moves.map {|child| root_node.add_child(child)} # {|child| child.parent=(root_node)}
        # poss_moves.each {|child| root_node.add_child(PolyTreeNode.new(child))}
        
        # first_set_moves.each do |move|
        
        # poss_moves.each do |move|
        #     poss_moves.each {|child| root_node.add_child(PolyTreeNode.new(child))}
        #     #move_q << move
        # end
        
        move_q = [root_node]
        # moven_q = { w: root_node }
        # move_q = root_node 
        #  debugger
        until move_q.empty?
            
            #shift off first move
            first = move_q.shift
            # debugger
            poss_chi_moves = new_move_positions(first.value)
            poss_chi_moves.each {|child| first.add_child(PolyTreeNode.new(child))}
            first.children.each {|child| move_q << child}
        end

        ### SHIFT OFF MOVE_Q ????

        #generate tree
        #1 node for  each pos from starting pos(root)
        # Dfs or bfs to find starting pos
        #find path 
        return root_node.children
    end

    def find_path(target_pos)# => [2,5]

    end

    def new_move_positions(pos)#[1,2]
        #debugger-------------------------2
        valid_moves = KnightPathFinder.valid_moves(pos)
        valid_moves.reject!{|move| @considered_pos.include?(move)} #[[1,2]].include?([1,2])
        valid_moves.each {|move| @considered_pos << move}
    end 
end

# if __FILE__ == $PROGRAMNAME #PRY BLOCK

game = KnightPathFinder.new([0,0])
# puts
# p "Current Position: #{game.pos}"
# puts
# p "Valid moves include: #{KnightPathFinder.valid_moves(game.pos)}"
# puts
# p "Root node: #{KnightPathFinder.root_node}"
# puts
# p "New move positions: #{game.new_move_positions(game.pos)}"
# puts
puts
p "build_move_tree: #{game.build_move_tree}"
puts

# end