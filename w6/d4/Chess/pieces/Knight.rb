require_relative 'piece.rb'

class Knight < Piece
    include Stepable
    
    def initialize(color, board, pos)
        super(color, board, pos)
        @symbol = :N
    end

    def inspect
        @value = @symbol
    end


    def move_difs
        #starting from 2,2
      pos_moves =  
        [ #up left,right
        [-2,-1], # 0,1
        [-2, 1], # 0,3
          #left up,down
        [-1,-2], #1,0
        [ 1,-2],  #3,0
          #right  up,down
        [1, 2], #3,4
        [-1,2], #1,4
         #up left,right
        [2,-1], #4,1
        [2, 1], # 4,3
        ]
    end
    
end