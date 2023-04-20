module Slideable

    HORIZONTAL_DIRS = [[1,0], [-1,0], [0, 1], [0,-1]].freeze
  
    DIAGONAL_DIRS = [[-1, -1], [-1, 1], [1, -1],[1, 1]].freeze
  
  
    def horizontal_dirs
      HORIZONTAL_DIRS
    end
  
    def diagonal_dirs
      DIAGONAL_DIRS
    end
  
  
    def moves
      moves = []

      move_dirs.each do |dx,dy|
        moves += grow_unblocked_moves_in_dir(dx,dy)
      end 
      moves 
      
    end
  
  
    private
  
    def move_dirs
      raise NotImplementedError 
    end
  
    
    def grow_unblocked_moves_in_dir(dx, dy)
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


     
    end
  end
  


  