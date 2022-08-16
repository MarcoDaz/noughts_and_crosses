require 'Board_reader'

RSpec.describe Board_reader do
    describe '#display' do
        it "returns a string of the board layout with correct location values" do
            board = double(:board, board_arr: [1,2,3,4,5,6,7,8,9])
            board_reader = Board_reader.new(board)
            result = board_reader.display
            expect(result).to eq " 1 | 2 | 3 \n ----------\n 4 | 5 | 6 \n ----------\n 7 | 8 | 9 "
        
        end
    end
end

