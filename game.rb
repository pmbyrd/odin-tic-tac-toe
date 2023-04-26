require 'irb'
p "Hello world"

# *Classes are representations of real world objects.
# *This object is a board
#-I want to create it with a certain size 
# I want to control how it it is displayed
# This board is diaplayed in the console and is how the game is
class Board
    # include BoardModules
    attr_accessor :board
    # must pass in a grid size to create a board
    def initialize(grid_size) #What is passed in to create the board
        # An array with an inner array, pay attention to ruby's special syntax for creating arrays in this manner
        # handle errors
        if grid_size.is_a? Integer
          @board = Array.new(grid_size) {Array.new(grid_size, ' - ')}
        else
            raise ArgumentError, "#{grid_size.class} is not of #{Integer.class}"
        end
    end
    # For each instance I must display it's board.  
    # !Must create an instance method for displaying a board
    def display_board
        p @board
        # first I need to display the board
        
        board.each {|row| p row}
        # for each row needs to be on it's own line
    end
end


# Later we will plug the board object into our game instance, in the game we will pass in the default sized based on the rules of tictactoe