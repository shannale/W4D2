require_relative 'piece'
# require_relative 'stepable'

class King < Piece
  # include Stepable

  def symbol
    '♚'
  end

  protected

  def move_diffs
    KING_DIRS
    # return an array of diffs representing where a King can step to
  end
end