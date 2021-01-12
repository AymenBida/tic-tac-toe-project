class Board
  attr_reader :moves
  
  def initialize
    @board = Array.new(9, ' ')
    @moves = 0
  end

  def show
    3.times do |i|
      puts "-------------"
      puts "| #{@board[i*3]} | #{@board[i*3 + 1]} | #{@board[i*3 + 2]} |"
    end
    puts "-------------"
  end

  def make_move?(move, turn)
    if @board[move - 1] == ' '
      @board[move - 1] = (turn == 1) ? 'X' : 'O'
      @moves += 1
      return true
    end
    false
  end

  def 
end