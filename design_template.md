# Noughts and Crosses Multi-Class Design Recipe

## Describe the Problem

Put or write the user story here. Addd any clarifying notes you might have.

As a player
To play noughts and crosses
I need to be able to see the board

As a player
To play noughts and crosses
I need to be able to make moves (update board)

As a player
To play noughts and crosses
I need an opponent to randomly make their moves

As a player
To play noughts and crosses
I need the board to recognise if there is winner or draw

## Design the Method Signature

Include the name of the method, it's parameters, return value, and side effects.




```ruby
class Board #Holds the board information
    def initialize(io = Kernel)
        @io
        @board = ['1','2','3','4','5','6','7','8','9']
        @player = "O"
        @computer = "X"
    end

    def print
        # returns the board formatted
    end


    def check_for_winner(Board)
    #Create variables to show potential winning patterns
    row1 = @board[0..2]
    row2 = @board[3..5]
    row3 = 
    diag1 = 
    diag2
    colm1
    colm2
    colm3
    winning_options = [[row1],[row2]...]
    #Iterate through each winning variable, check if the board matches any of these with noughts or crosses
    winning_options.each{|winners| winners.all?("O")}
    winning_options.each{|winners| winners.all?("X")}
    #Return winner if so
    end


    def update(location, player)
        #Change the location for the player's icon or computer's
        #Print out the board again
        #Check if there is a winner
    end

    def is_there_a_winner
        #Checks board for three equal icons in a row/column/diagonal
    end

    def player_input
        #gets for player input, with their chosen play location
    end

    def computer_input
        #Computer plays their icon in a randomised, free location
    end

    def run # @io
        # 1) Show board
        # 2) Ask player for location
        # 3) Update board icon at that location
        # 4) Check board for a winner or draw
        # 5) If not computer plays
        # 6) Check board for a winner or draw ? Winner || Draw : false
        # 7) If not loop 2 - 6
    end
end







 1 | 2 | 3
 ----------
 4 | 5 | 6
 ----------
 7 | 8 | 9

 board = ['1','2'...,'9']

 if 1,2,3.include "X" = Player wins

 #Choose your first place to play your naught
 1 | 2 | 3
 ----------
 4 | 5 | 6
 ----------
 7 | 8 | 9
 gets.chomp => "1"

 board.update(location, player)
    board[location-1] = player.icon

    
 
```



## Create Examples as Integration Tests

Create examples of the classes being used together in different situations and combinations that reflect the ways in which the system will be used.


```ruby
# 1

```

## Create Examples as Unit Tests

Create examples, where appropriate, of the behaviour of each relevant class at a more granular level of detail.

```ruby
# 1

```

## Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour