module Stepable
  
  KING_DIRS = 
  [[1,0],
  [-1,0]
  [0,1],
  [0,-1], 
  [1,1],
  [-1,-1],
  [-1,1],
  [1,-1] ].freeze

  KNIGHT_DIRS = 
  [ [2, -1],
  [1, -2],
  [-1, 2],
  [-2, 1],
  [1, 2],
  [2, 1],
  [-1, -2],
  [-2, -1] ].freeze

  def moves(dirs)



  end
  
    private
  
    def move_diffs
      # subclass implements this
      raise NotImplementedError
    end
  end
  
  
  
  
  
  # x, y = @pos
  # x += dirs[0]
  # y += dirs[1]
  # temp_moves = []
  # if (x.between?(0,7) && y.between?(0,7))
  #     if board[@pos].is_a?(NullPiece) 
  #         temp_moves << @pos
  #     elsif self.color != board[@pos].color
  #         temp_moves << @pos
  #     end
  # end
  # Note: you can invoke methods from the piece from within the module methods, and vice versa. It is a two way street!