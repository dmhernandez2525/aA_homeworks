require_relative 'piece.rb'
require 'singleton'
class NullPiece < Piece 

    include Singleton

    def initialize
        @symbol = :NUll
        @color = :G

    end

    def inspect
        @value = @symbol
    end
end