require_relative './board.rb'
require_relative './Board_reader.rb'
require_relative './GameLogic.rb'
require_relative './input.rb'

class UI
    def initialize(io = Kernel)
        @io = io
        @board = Board.new
        @board_reader = Board_reader.new(@board)
        @input = Input.new(@io)
        @gameLogic = GameLogic.new(@board)
    end

    def run
        turn_count = 0
        @io.puts @board_reader.display
        while @gameLogic.check_for_winner == false
            turn_count.even? ? @input.player(@board) : @input.computer(@board)
            turn_count += 1 
            @io.puts ""
            @io.puts @board_reader.display
            @io.puts ""
            break if turn_count == 9
        end
        winner = @gameLogic.check_for_winner
        if winner
            winner == "Player" ? puts("You have won, congratulations!") : puts("The computer has won, good try - better luck next time.")
        else
            puts "It is a draw, please play again."
        end
    end
end

ui = UI.new
ui.run