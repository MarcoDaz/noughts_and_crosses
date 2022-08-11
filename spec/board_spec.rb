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
end