require_relative 'piece.rb'

class Board


    attr_reader :rows

    def initialize
        @null_piece = NullPiece.instance
        black =  Array.new(2) {Array.new(8){Piece.new()}}
        blank = Array.new(4) {Array.new(8){@null_piece}}
        white = Array.new(2) {Array.new(8){Piece.new()}}
        @rows = black + blank + white 
        
    end

    def black_pieces
        # first_row = Array.new(8)  #[nil,nil]
        #     first_row.each_with_index do |spot, i|
        #         if i == 0 || i == 7 
        #         first_row[i] = Rook.new(self,"black",[0,i])
        #         end 
        #     end 

        # pawns = Array.new()
    end 

    def white_pieces
    end 

    def [](pos)
        x, y = pos
        @rows[x][y]
    end

    def []=(pos, value)
        x, y = pos
        @rows[x][y] = value
    end

    def move_piece(color, start_pos=nil, end_pos)
        raise "no piece at start" if start_pos.nil? || self[pos] == end_pos
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

