require_relative "dictionary"
require_relative "player"

class Game
    

    def initialize
        @player_1 = Player.new
        @player_2 = Player.new
        @fragment = ""
        @dictionary = DICTIONARY
        @current_player = [@player_1, @player_2].sample
        @previous_player = nil
    end

    def previous_player
        @previous_player
    end

    def current_player
        @current_player
    end

    def next_player!
        if @current_player == @player_1
            @previous_player = @player_1
            @current_player = @player_2
        else
            @previous_player = @player_2
            @current_player = @player_1
        end
    end

    def take_turn(player)
        var = player.guess
        until valid_play?(var)
            var = player.guess
        end
        @fragment += var
        self.next_player!
       
        
    end

    def valid_play?(var)
        DICTIONARY.each do |ele| 
            return true if var == ele[0...var.length]
        end
        false
    end

    def play_round
        # until @fragment == @dictionary.

        self.take_turn(@current_player)
    end
end

game = Game.new
game.play_round