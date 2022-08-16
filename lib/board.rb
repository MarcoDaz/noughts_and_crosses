class Board
    def initialize
        @board_arr = (1..9).to_a
    end

    def update(location_index, player_icon)
        @board_arr[location_index] = player_icon
    end

    def board_arr
        @board_arr
    end
end