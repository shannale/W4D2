module Slideable

    HORIZONTAL_DIRS = [[1,0], [-1,0], [0, 1], [0,-1]].freeze
  
    DIAGONAL_DIRS = [[-1, -1], [-1, 1], [1, -1],[1, 1]].freeze
  
  
    def horizontal_dirs
      HORIZONTAL_DIRS
    end
  
    def diagonal_dirs
      DIAGONAL_DIRS
    end
  
  
    # should return an array of places a Piece can move to
    def moves
      # create array to collect moves
      moves = []

      move_dirs.each do 
      
  
      # iterate over each of the directions in which a slideable piece can move
        # use the Piece subclass' `#move_dirs` method to get this info
        # for each direction, collect all possible moves in that direction
          # and add them to your moves array 
          # (use the `grow_unblocked_moves_in_dir` helper method)
  
      # return the final array of moves (containing all possible moves in all directions)
    end
  
  
    private
  
    def move_dirs
      raise NotImplementedError # this only executes if not implemented
    end
  
  
    # this helper method is only responsible for collecting all moves in a given direction
    # the given direction is represented by two args, the combination of a dx and dy
    def grow_unblocked_moves_in_dir(dx, dy)
      # create an array to collect moves
      moves = []

      x, y = self[pos]
      x, y = [new_pos]

      
      loop do 
        x, y = x + dx, y + dy
        poss_pos = [x, y]

        if board.empty?(poss_pos) 
          moves << poss_pos
        else 
          self.board[poss_pos].color != self.color
          moves << poss_pos
        end

        moves
      end


      # get the piece's current row and current column
  
      # in a loop:
        # continually increment the piece's current row and current column to generate a new position
        # stop looping if the new position is invalid (not on the board); the piece can't move in this direction
        # if the new position is empty, the piece can move here, so add the new position to the moves array
        # if the new position is occupied with a piece of the opposite color, the piece can move here (to capture the opposing piece), so add the new position to the moves array
          # but, the piece cannot continue to move past this piece, so stop looping
        # if the new position is occupied with a piece of the same color, stop looping
  
      # return the final moves array
    end
  end
  

  #if spot is emoty or piece of opposite color
  
  
  
  # Note: you can invoke methods from the piece from within the module methods, and vice versa. It is a two way street!
  