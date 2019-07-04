class Player
    def initialize
        


    end

    def guess
        puts "enter a guess"
        input = gets.chomp
        alphabet = ("a".."z").to_a
        if !alphabet.include?(input)
            self.alert_invalid_guess hey would you mind sending me a zip version of this?
        end
        input
    end

    def alert_invalid_guess
        puts "invalid guess"
    end

end