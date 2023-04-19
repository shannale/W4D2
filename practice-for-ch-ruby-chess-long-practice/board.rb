require_relative 'piece.rb'

class Board

    attr_reader :rows 

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
        [0,1,6,7].each do |i|
            if i == 0 || i == 1
                color = 'black'
            else 
                color ='white'
            end
            (0..7).to_a.each do |j|
                pos = [i,j]

                if i == 1 || i == 6
                    self[pos] = Pawn.new(self, color, pos)
                elsif j == 0 || j == 7
                    self[pos] = Rook.new(self, color, pos)
                elsif j == 1 || j == 6
                    self[pos] = Knight.new(self, color, pos)
                elsif j == 2 || j == 5 
                    self[pos] = Bishop.new(self, color, pos)
                elsif j == 3 
                    self[pos] = Queen.new(self, color, pos)
                else
                    self[pos] = King.new(self, color,pos)
                end
            end
        end

        self.print
    end

    def print
        @rows.each do |row|
            puts row.join
        end
    end

    
    def move_piece(color, start_pos, end_pos)
        raise "no piece at start" if start_pos.empty?

        piece = self[start_pos]

        
    end

    def valid_pos?(pos)
        pos.all? {|a| a.between?(0,7)}
    end

    def empty?(pos)
        self[pos].empty?
    end

    # def add_piece(piece, pos)

    # end

    def checkmate?(color)

    end

    def in_check?(color)

    end
    
    def find_king?(color)

    end

    # def pieces

    # end

    def dup

    end

    def move_piece!(color, start_pos, end_pos)

    end

    
    private

    attr_reader :null_piece
    
    
end


