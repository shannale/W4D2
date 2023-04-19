require_relative 'piece'
require_relative 'slideable'



class Queen < Piece
  include Slideable


  def symbol
    '♛'.colorize(color)
  end

  def move_dirs
    [[2,2], [1,1], [4,2], [4,4], [2,4], [2,3], [3,2], [3,1],
    [3,0],[4,3],[5,3],[6,3],[3,4],[3,5],[3,6]]
  end 

  protected

  # def move_dirs
  #   # return the directions in which a queen can move
  #   # a queen can move horizontally (across rows and columns) and diagonally
  # end
end


# Note: you can invoke methods from the piece from within the module methods,
# and vice versa. It is a two way street!