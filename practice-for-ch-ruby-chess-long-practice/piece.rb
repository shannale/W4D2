class Piece

   attr_reader :color, :board, :piece

    def initialize (symbol)
        @color = symbol
        @board = board
        @pos = []
    end

    def to_s
        " #{@color} "
    end
    
    
end