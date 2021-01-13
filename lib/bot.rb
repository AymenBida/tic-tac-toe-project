class Bot < Player
  def initialize(name, letter)
    super
  end

  def do_something
    rand(1..9)
  end
end
