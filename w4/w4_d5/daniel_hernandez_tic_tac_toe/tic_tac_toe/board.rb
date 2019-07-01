class Board
    attr_accessor :grid
    
    def initialize
        @grid = Array.new(3) {Array.new(3)}
    end
    
    def place_mark(pos_arr)
        one = pos_arr[0]
        two = pos_arr[1]
        if self.empty?(pos_arr)
            @grid[one][two] = pos_arr[2]
            true
        else
            puts "You cant make that move!"
            false
        end
    end

    def empty?(pos_arr)
        @grid[pos_arr[0]][pos_arr[1]] == nil
    end

    def winner
        if self.win_row?(@grid) == :X || self.win_row?(@grid) == :O 
            return self.win_row?(@grid)
        elsif self.win_row?(@grid.transpose)  == :X || self.win_row?(@grid.transpose) == :O 
            return self.win_row?(@grid.transpose)
        elsif self.win_diag? == :X || self.win_diag? == :O 
            return self.win_diag?
        elsif @grid.flatten.all? {|ele| ele == :O || ele == :X}
            return :T
        end
        false
    end
    
    def win_row?(grid)
        grid.each do |row|
            if row.all? { |cell| cell == :X }
                return :X
            elsif row.all? { |cell| cell == :O }
                return :O 
            end
        end
    end
    
    def win_diag?
        array_1 = [@grid[0][2], @grid[1][1], @grid[2][0]]
        array_2 = [@grid[0][0], @grid[1][1], @grid[2][2]]
        [array_1, array_2].each do |diag|
            if diag.all? { |cell| cell == :X }
                return :X
            elsif diag.all? { |cell| cell == :O }
                return :O
            end
        end
    end 
       
    def over?
        if self.winner == false  
            return true
        else
            return false
        end
    end
end

