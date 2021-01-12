class Board
  def initialize
    @board = Array.new(9, ' ')
  end

  def show
    3.times do |i|
      puts "-------------"
      puts "| #{@board[i*3]} | #{@board[i*3 + 1]} | #{@board[i*3 + 2]} |"
    end
    puts "-------------"
  end

  def is_valid?(move, turn)
    if @board[move - 1] == ' '
      @board[move - 1] = (turn == 1) ? 'X' : 'O'
    end
  end
end