require 'board'

RSpec.describe Board do
    describe "#player_input" do
        it "updates a location on the board" do
            io = double :io
            expect(io).to receive(:gets).and_return('1')

            board = Board.new(io)
            board.player_input
            expect(board.board).to eq ['O','2','3','4','5','6','7','8','9']
        end

        it "fails if location is already played" do
            io = double :io
            expect(io).to receive(:gets).and_return('1')
            expect(io).to receive(:puts).with("Stop cheating!")

            board = Board.new(io)
            board.board[0] = 'O'

            board.player_input

        end
    end

    describe "#print_board" do
        it "Prints unedited board" do
            io = double :io

            expect(io).to receive(:puts).with(" 1 | 2 | 3 \n ----------\n 4 | 5 | 6 \n ----------\n 7 | 8 | 9 ")

            board = Board.new(io)
            board.print_board
        end
        it "Prints edited board after a player moves" do
            io = double :io

            expect(io).to receive(:gets).and_return('1')
            expect(io).to receive(:puts).with(" O | 2 | 3 \n ----------\n 4 | 5 | 6 \n ----------\n 7 | 8 | 9 ")

            board = Board.new(io)
            board.player_input
            board.print_board
        end
    end
    
    describe "#computer_input" do
        it "Plays an X at an unplayed location" do
            io = double :io
            expect(io).to receive(:rand).with(9).and_return(0)

            board = Board.new(io)
            board.computer_input
            expect(board.board[0]).to eq "X"
        end
        it "Checks while loop checks for locations already played" do
            io = double :io
            expect(io).to receive(:rand).with(9).and_return(0)
            expect(io).to receive(:rand).with(9).and_return(1)
            board = Board.new(io)
            board.board[0] = "X"
            board.computer_input
            expect(board.board[1]).to eq "X"
        end
    end

    describe "#check_for_winner" do
        it "checks if player has won by row" do
            board = Board.new
            board.board = ['O','O','O','4','5','6','7','8','9']
            board.check_for_winner
            expect(board.winner).to eq "Player"
        end
    end
end