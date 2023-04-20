module Stepable
  
  KING_DIRS = 
  [ [1,0],
  [-1,0],
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



  def moves(dirs) # dirs = [dx,dy]
    moves = [] 
    x , y = self[pos]
    x , y = x + dx, y + dy 
    move_diffs.each do |new_pos|
      if board.empty?(new_pos) 
        moves << new_pos 
      else 
        self.board[new_pos].color != self.color 
      end 
    end 
    moves 

  end
  
  private
  
  def move_diffs
    raise NotImplementedError
  end
end 

  
  
  
  
  

  