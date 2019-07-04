require_relative 'piece.rb'

class Queen < Piece

    def initialize(color, board, pos)
        super(color, board, pos)
        @symbol = :Q
    end

    def inspect
        @value = @symbol
    end


end