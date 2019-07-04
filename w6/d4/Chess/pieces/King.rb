require_relative 'piece.rb'
# require './module/Stepable.rb'
require_relative 'Stepable'

class King  < Piece
    include Stepable

    # def initialize

    # end
    def initialize(color, board, pos)
        super(color, board, pos)
        @symbol = :K
    end

    def inspect
        @value = @symbol
    end



    def move_difs
      pos_moves =  [ #up
         [-1,-1],[-1,0],[-1,1],
         [ 0,-1],       [0, 1],
         [ 1,-1],[ 1,0],[ 1,1]
        ]
    end


    def val
    end


end
    