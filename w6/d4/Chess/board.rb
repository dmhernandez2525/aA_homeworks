require_relative 'pieces_req.rb'


class Board
    attr_reader :grid
    def initialize()
        @grid = Array.new(8) { Array.new(8, NullPiece.instance) }
        row_1 = [:R,:N,:B,:Q,:K,:B,:N,:R]
        row_2 = [:P,:P,:P,:P,:P,:P,:P,:P]
        [0,1,6,7].each do |i |
            (0..7).each do |j|
                if [0,7].include?(i) 
                    color = (i == 0 ? :Black : :White)
                    current_sym = row_1[j]
                    if current_sym == :N
                        current_piece = Knight.new(color,self,[i,j]) 
                    elsif current_sym == :R
                        current_piece = Rook.new(color,self,[i,j]) 
                    elsif current_sym == :B
                        current_piece = Bishop.new(color,self,[i,j]) 
                    elsif current_sym == :Q
                        current_piece = Queen.new(color,self,[i,j]) 
                    else current_sym == :K
                        current_piece = King.new(color,self,[i,j]) 
                    end
                    #     current_piece = Piece.new(black,self,[i,j]) 
                    # else
                    #     current_piece = Piece.new(white,self,[i,j]) 
                    add_piece(current_piece,[i,j])
                # else
                #     if i == 1
                #         current_piece = Pawn.new(:Black,self,[i,j]) 
                #     else
                #         current_piece = Pawn.new(:White,self,[i,j]) 
                #     end
                #     add_piece(current_piece,[i,j])
                end
            end
        end
    end

    def add_piece(piece, pos)
        self[pos] = piece
    end

    
    def move_piece(start_pos, end_pos)
        sx, sy = start_pos
        ex, ey = end_pos

        current_piece = self[start_pos]
        raise "there is no piece there" if current_piece == NullPiece.instance
        raise unless current_piece.valid_moves.include?(end_pos)
        self[start_pos] = NullPiece.instance
        self[end_pos] = current_piece
        current_piece.pos = end_pos
    end

    def [](pos)
        sx, sy = pos
        @grid[sx][sy]
    end

    def []=(pos,value)
        sx, sy = pos
        @grid[sx][sy] = value 
    end

    


end

board = Board.new
debugger
p board.grid