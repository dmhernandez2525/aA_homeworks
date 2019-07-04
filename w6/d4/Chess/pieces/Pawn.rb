require_relative 'piece.rb'

class Pawn < Piece

    def initialize(color, board, pos)
        super(color, board, pos)
        @symbol = :P
    end

    def inspect
        @value = @symbol
    end


end