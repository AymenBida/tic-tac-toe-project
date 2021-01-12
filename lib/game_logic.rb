class Board
  attr_reader :moves
  WIN_CASES = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]

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

  def draw?
    true if @moves == 9
  end

  def win?
    if @moves > 4
      WIN_CASES.each do |a_case|
        return true if @board[a_case[0]] != ' ' && @board[a_case[0]] == @board[a_case[1]] && @board[a_case[0]] == @board[a_case[2]]
      end
      false
    else
      false
    end
  end
end