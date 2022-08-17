class Input
  def initialize(io = Kernel)
    @io = io
  end

  def player(board)
    @io.puts "Please choose a place to play your nought:"
    location_index = @io.gets.chomp.to_i - 1
    if board.board_arr[location_index] == "X" || board.board_arr[location_index] == "O"
      @io.puts "Your chosen location has already been played, play again!"
      player(board)
    end
    board.update(location_index, 'O')
  end

  def computer(board, io = Kernel)
    location_index = io.rand(9)
    while board.board_arr[location_index] == "X" || board.board_arr[location_index] == "O"
      location_index = io.rand(9)
    end
    board.update(location_index, 'X')
  end
end
