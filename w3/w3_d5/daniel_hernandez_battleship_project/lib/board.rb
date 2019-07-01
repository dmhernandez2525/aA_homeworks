class Board


    attr_reader :size

    def self.print_grid(new_grid)
        new_grid.each  do  |row| 
            puts row.join(" ")
        end
    end

    def initialize(n)
        @grid = Array.new(n){Array.new(n,:N)}
        # n.times{|number| @grid[number].unshift(number)   }
        @size = n*n
        @n = n
    end
    
    def [](pair) # pair = pair of indices in the form [row, column]
        row = pair[0]
        column = pair[1]
        @grid[row][column]
    end

    def []=(position,value)
        row = position[0]
        column = position[1]
        @grid[row][column] = value
    end

    def num_ships
        @grid.flatten.count{|ele| ele == :S}
    end

    def attack(position)
        if self[position] == :S
            self[position] = :H
            puts "you sunk my battleship!"
            return true
        else
            self[position] = :X
            return false
        end
    end

    def place_random_ships
        all_pairs  = []
        (0...@n).each do |first|
            (0...@n).each do |second|
                all_pairs << [first,second]
            end
        end
        all_pairs.sample((@grid.flatten.length) / 4).each{|pair| self[pair] = :S}
    end

    def hidden_ships_grid
        hidden  = Array.new(@n){Array.new(@n,:N)}
        (0...@n).each do |first|
            (0...@n).each do |second|
                pair = [first,second]
                if self[pair] == :S
                    hidden[first][second] = :N
                else 
                    hidden[first][second] = self[pair]
                end
            end
        end
        hidden
    end

    def cheat
        Board.print_grid(@grid)
    end

    def print
        Board.print_grid(self.hidden_ships_grid)
    end


  
end
