

    attr_accessor :board, :winner

    def initialize(io = Kernel)
        @io = io
        @board = ['1','2','3','4','5','6','7','8','9']
        @winner = false
    end

    def player_input
        puts "Please choose a place to play your nought:"
        location = @io.gets.chomp.to_i
        @board[location - 1] == "X" || @board[location - 1] == "O" ? @io.puts("Stop cheating!") : @board[location - 1] = 'O'
    end

    def print_board

        @io.puts(" #{@board[0]} | #{@board[1]} | #{@board[2]} \n ----------\n #{@board[3]} | #{@board[4]} | #{@board[5]} \n ----------\n #{@board[6]} | #{@board[7]} | #{@board[8]} ")
    end

    def computer_input
        location = @io.rand(9)
        while @board[location] == "X" || @board[location] == "O"
            location = @io.rand(9)
        end
        puts "The computer played at location #{location+1}:"
        @board[location] = 'X'
    end

    def check_for_winner
        row1 = @board[0..2]
        row2 = @board[3..5]
        row3 = @board[6..8]
        diag1 = [@board[0], @board[4], @board[8]]
        diag2 = [@board[6], @board[4], @board[2]]
        colm1 = [@board[0], @board[3], @board[6]]
        colm2 = [@board[1], @board[4], @board[7]]
        colm3 = [@board[2], @board[5], @board[8]]

        winning_options = [row1,row2,row3,diag1,diag2,colm1,colm2,colm3]
       
        @winner = "Player" if winning_options.any?{|winners| winners.all?("O")} 
        @winner = "Computer" if winning_options.any?{|winners| winners.all?("X")}
    end

    def run
        turn_count = 0
        print_board
        while @winner == false
            turn_count.even? ? player_input : computer_input
            turn_count += 1 
            puts ""
            print_board
            puts ""
            check_for_winner
            break if turn_count == 9
        end
        if @winner
            @winner == "Player" ? puts("You have won, congratulations!") : puts("The computer has won, good try - better luck next time.")
        else
            puts "It is a draw, please play again."
        end
    end
end

