class Board
    attr_accessor :board

    def initialize(io)
        @io = io
        @board = ['1','2','3','4','5','6','7','8','9']
    end

    def player_input
        location = @io.gets.chomp.to_i
        @board[location - 1] == "X" || @board[location - 1] == "O" ? @io.puts("Stop cheating!") : @board[location - 1] = 'O'
        
    end
end