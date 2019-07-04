module Stepable

    def moves
        pos_moves = move_difs
        row,collum = self.pos
        pos_moves.map do |pos|
        [(pos.first + row),(pos.last + collum)]  
        end       
    end

    def move_difs

    end

end