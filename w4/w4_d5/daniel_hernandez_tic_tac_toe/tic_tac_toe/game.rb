require_relative "board"
require_relative "human_player"
require_relative "computer_player"

class Game
    attr_accessor :mark, :board , :current_player 

    def initialize
        @times = 0
        @board = Board.new
        @human_player = Human_player.new
        @computer_player = Computer_player.new
        @current_player = [@computer_player, @human_player].sample
        @board_grid = board_grid
    end

    def board_grid
        puts "\n"
        board.grid.each_with_index do |row, i|
            row.each_with_index { |cell, j| print "  #{cell}  |" if j != 2}
            puts "\n----+----+----" if i != 2
        end
        puts "\n"
        puts "\n"
    end

    def switch_players!
        if @current_player == @human_player
            @current_player = @computer_player
        else
            @current_player = @human_player
        end
    end

    def play_turn
        if @current_player == @computer_player
            puts "Computer, it's your turn!"
        else
            puts ["Is that all you got?", "My mother[board] is better than you!", "You suck!", "God, you take forever!", "It's not computer science!"].sample
            puts "Human, it's your turn!"
        end
        
        if @board.place_mark(self.current_player.get_move(self.board)) 
            index =
            self.switch_players!
        end
    end

    def play
        while @board.over?
            @times += 1
            self.play_turn
            @current_player.display(board)
        end
        if self.board.winner == :O
            puts ["I Win!", "That was easy...", "Who's next?", "Better luck next time?"].sample
        elsif self.board.winner == :X
            puts ["I'm calling the cops, you cheated!", "You couldn't program me better?", "I am still prettier then you!"].sample
            puts "Human Wins!"
        elsif self.board.winner == :T
            puts "It's a TIE!"
        end
    end
end

var = Game.new
var.play
