class Input
  def initialize(io = Kernel)
    @io = io
  end

  def player(board)
    location_index = @io.gets.chomp.to_i - 1
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
