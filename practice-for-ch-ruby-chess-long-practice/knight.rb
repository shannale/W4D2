require_relative 'piece'
# require_relative 'stepable'


class Knight < Piece
  attr_reader :symbol
  # include Stepable

  def symbol
    '♞'
  end

  # protected

  # def move_diffs
  #   KNIGHT_DIRS
  #   # return an array of diffs representing where a Knight can step to
  # end
end
