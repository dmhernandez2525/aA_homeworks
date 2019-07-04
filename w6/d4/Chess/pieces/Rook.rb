require_relative 'piece.rb'

class Rook < Piece

    def initialize(color, board, pos)
        super(color, board, pos)
        @symbol = :R
    end

    def inspect
        @value = @symbol
    end

    def moves

    end

    def moves_diff
        [0,0]
        
    end

end