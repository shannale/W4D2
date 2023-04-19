require_relative 'piece.rb'

class Board


    attr_reader :rows

    def initialize
        @null_piece = NullPiece.instance
        black =  Array.new(2) {Array.new(8){Piece.new(:K)}}
        blank = Array.new(4) {Array.new(8, @null_piece)}
        white = Array.new(2) {Array.new(8){Piece.new(:R)}}
        @rows = black + blank + white 
        
    end

    def [](pos)
        r, c = pos
        @rows[r][c]
    end

    def []=(pos, value)
        r, c = pos
        @rows[r][c] = value
    end

    def move_piece(color, start_pos, end_pos)
        self[start_pos] 
    end

    def valid_pos?(pos)

    end

    def add_piece(piece, pos)

    end

    def checkmate?(color)

    end

    def in_check?(color)

    end
    
    def find_king?(color)

    end

    def pieces

    end

    def dup

    end

    def move_piece!(color, start_pos, end_pos)

    end

    
    private

    attr_reader :null_piece
    
    
end

# b = Board.new
#p b

