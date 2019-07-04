# require_relative ''

class Piece

    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
    end

    def inspect
        @value = @name
    end

    def moves()

    end

    def valid_moves
        
    end

    def empty?()
        self == NullPiece.instance
    end

    def pos=(val)
        @pos = val
    end

    def to_s

    end

    def symbol
     @color
    end

end