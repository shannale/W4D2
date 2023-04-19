class Piece

   attr_reader :color, :board, :position

    def initialize (board, color, position)
        @board = board
        @color = color
        @position = position
    end

    def symbol
            
    end

    def to_s
        " #{symbol} "
    end

    def empty?

    end 

    
    
    
end