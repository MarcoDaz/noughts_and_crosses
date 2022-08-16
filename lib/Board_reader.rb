class Board_reader
    def initialize(board)
        @board_arr = board.board_arr
    end

    def display
        return (" #{@board_arr[0]} | #{@board_arr[1]} | #{@board_arr[2]} \n ----------\n #{@board_arr[3]} | #{@board_arr[4]} | #{@board_arr[5]} \n ----------\n #{@board_arr[6]} | #{@board_arr[7]} | #{@board_arr[8]} ")
    end
end