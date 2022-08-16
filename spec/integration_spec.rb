require 'board'
require 'Board_reader'
# require 'GameLogic'
require 'input'
# require 'UI'

RSpec.describe "Integration tests" do
    describe Board_reader do
        it "reads an instance of board and returns a string display" do

            # As a player
            # To play noughts and crosses
            # I need to be able to see the board

            board = Board.new
            board_reader = Board_reader.new(board)
            result = board_reader.display
            expect(result).to eq " 1 | 2 | 3 \n ----------\n 4 | 5 | 6 \n ----------\n 7 | 8 | 9 "
        end
    end
    describe Input do
        it 'takes play input and updates board array with icon' do
            # As a player
            # To play noughts and crosses
            # I need to be able to make moves (update board)
            io = double(:io)
            expect(io).to receive(:gets).and_return("1")

            board = Board.new
            input = Input.new(io)
            input.player(board)

            result = board.board_arr
            expect(result).to eq ["O",2,3,4,5,6,7,8,9]

        end

        it "plays as computer and updates board array with icon" do
            # As a player
            # To play noughts and crosses
            # I need an opponent to randomly make their moves

            io = double(:io)
            expect(io).to receive(:gets).and_return("1")
            expect(io).to receive(:rand).with(9).and_return(1)

            board = Board.new
            input = Input.new(io)
            input.player(board)
            input.computer(board, io)

            result = board.board_arr
            expect(result).to eq ["O","X",3,4,5,6,7,8,9]
        end
    end
end





# As a player
# To play noughts and crosses
# I need the board to recognise if there is winner or draw