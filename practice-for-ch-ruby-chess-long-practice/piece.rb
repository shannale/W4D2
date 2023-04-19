class Piece

   attr_reader :color, :board, :position

    def initialize (board, color, position)
        @color = color
        @board = board
        @position = position
    end

    def to_s
        " #{@color} "
    end

    def empty?
    end 

    
    
    
end