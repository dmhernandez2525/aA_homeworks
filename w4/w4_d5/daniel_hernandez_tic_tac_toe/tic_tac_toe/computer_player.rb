class Computer_player
   attr_reader :mark
        WIN_COMBO = [
        [[0,0],[0,1],[0,2]],
        [[1,0],[1,1],[1,2]],
        [[2,0],[2,1],[2,2]],

        [[0,0],[1,0],[2,0]],
        [[0,1],[1,1],[2,1]],
        [[0,2],[1,2],[2,2]],

        [[0,0],[1,1],[2,2]],
        [[0,2],[1,1],[2,0]]
        ]

        CORNER = [[0,0],[0,2],[2,0],[2,2],[1,1]]


    def initialize
        @mark = :O
    end

    def display(board)
        
        puts "\n"
        board.grid.each_with_index do |row, i|
            row.each_with_index do |cell, j| 
                print "  #{cell}  " 
                print "|" if j != 2
            end
            puts "\n----+----+----" if i != 2
        end
        puts "\n"
        puts "\n"
    end    
    
    def get_move(board)
        
        WIN_COMBO.each do |win|
                counter = 0
            win.each do |index|
                first = index[0]
                second = index[1]
                if board.grid[first][second] == :X
                    break
                elsif board.grid[first][second] == :O
                    counter += 1
                    if counter == 2
                        win.each do |index|
                            first = index[0]
                            second = index[1]
                            if board.grid[first][second] == nil
                                return [first, second, self.mark]
                            end
                        end
                    end
                end
            end
        end

        WIN_COMBO.each do |win|
                counter = 0
            win.each do |index|
                first = index[0]
                second = index[1]
                if board.grid[first][second] == :O
                    break
                elsif board.grid[first][second] == :X
                    counter += 1
                    if counter == 2
                        win.each do |index|
                            first = index[0]
                            second = index[1]
                            if board.grid[first][second] == nil
                               
                                return [first, second, self.mark]
                            end
                        end
                    end
                end
            end
        end
        
        CORNER.each do |index|
            first = index[0]
            second = index[1]
                if board.grid[first][second] == nil
                return [first, second, self.mark]
            end
        end
        [rand(3), rand(3), self.mark] 
    end
end











