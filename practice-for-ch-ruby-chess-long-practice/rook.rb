require_relative 'piece'
require_relative 'slideable'

class Rook < Piece
  attr_reader :symbol
  # include Slideable

  def symbol
    '♜'
  end

  protected

  def move_dirs
    # HORIZONTAL_DIRS
    # return the directions in which a rook can move
    # a rook can move horizontally (across rows and columns)
  end
end
