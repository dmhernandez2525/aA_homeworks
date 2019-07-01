class Human_player
    attr_reader :mark

    def initialize
        @mark = :X
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
        puts "enter your move with a space ex. '1 1'"
        var = gets.chomp.split.map(&:to_i)
        [var[0],var[1],self.mark] 
    end
end