class GameLogic
    def initialize(board)
        @board_arr = board.board_arr
    end

    def check_for_winner
        row1 = @board_arr[0..2]
        row2 = @board_arr[3..5]
        row3 = @board_arr[6..8]
        diag1 = [@board_arr[0], @board_arr[4], @board_arr[8]]
        diag2 = [@board_arr[6], @board_arr[4], @board_arr[2]]
        colm1 = [@board_arr[0], @board_arr[3], @board_arr[6]]
        colm2 = [@board_arr[1], @board_arr[4], @board_arr[7]]
        colm3 = [@board_arr[2], @board_arr[5], @board_arr[8]]

        winning_options = [row1,row2,row3,diag1,diag2,colm1,colm2,colm3]

        return "Player" if winning_options.any?{|winners| winners.all?("O")}
        return "Computer" if winning_options.any?{|winners| winners.all?("X")}
        return false
    end
end

              
              # def initialize(board)
                #     
                # end

                # def check_for_winner