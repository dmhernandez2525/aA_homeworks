class Board

    def initialize
        @grid = Array.new(4){Array.new(4)} #[[1][Q][L][S]][[][17][][]]
    end

    def populate

        letters = ["a","b","c","d","e","f","g","h","a","b","c","d","e","f","g","h"]
        shuffled = letters.shuffle
        i = 0
        @grid.each.with_index do |sub_array, idx1|
            sub_array.each.with_index do |card, idx2|
                card = Card.new(shuffled[i])
                @grid[idx1][idx2]= card
                i += 1
            end
        end
    end

end