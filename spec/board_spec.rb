require 'board'

RSpec.describe Board do
    describe '#update' do
        it "changes index 0 to a 'O'" do
            board = Board.new
            #input.player => returns player location as an index.
            board.update(0, "O")
            result = board.board_arr
            expect(result).to eq ["O",2,3,4,5,6,7,8,9]
        end

    end
end