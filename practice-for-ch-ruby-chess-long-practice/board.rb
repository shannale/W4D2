require_relative 'piece.rb'

class Board



    attr_reader :rows, :null_piece

    def initialize
        @null_piece = NullPiece.instance
        @rows = Array.new(8) {Array.new(8)}
    end
    
    def [](pos)
        x, y = pos
        @rows[x][y]
    end
    
    def []=(pos, value)
        x, y = pos
        @rows[x][y] = value
    end




    def adding_pieces
        [0,7].each do |i|
            if i == 0
                color = "Black"
            else
                color = "White"
            end
            (i...8).to_a.each do |j|
                pos = [i, j]
                p pos
                # if j == 0 || j == 7
                #     self[pos] = Rook.new(self, color, pos)
                # elsif j == 1 || j == 6
                #     self[pos] = Knight.new(self, color, pos)
                # else

                # end
            end
        end
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

