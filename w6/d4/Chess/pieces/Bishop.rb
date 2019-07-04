require_relative 'piece.rb'

class Bishop < Piece

    def initialize(color, board, pos)
        super(color, board, pos)
        @symbol = :B
    end

    def inspect
        @value = @symbol
    end


end