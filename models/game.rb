class Game

  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def play
    case
      # Rock wins.
      when (@hand1 == 'rock' && @hand2 == 'scissors')
        return 'Player 1 (rock) beats Player 2 (scissors)!'
      when (@hand1 == 'scissors' && @hand2 == 'rock')
        return 'Player 2 (rock) beats Player 1 (scissors)!'
      # Paper wins.
      when (@hand1 == 'paper' && @hand2 == 'rock')
        return 'Player 1 (paper) beats Player 2 (rock)!'
      when (@hand1 == 'rock' && @hand2 == 'paper')
        return 'Player 2 (paper) beats Player 2 (rock)!'
      # Scissors wins.
      when (@hand1 == 'scissors' && @hand2 == 'paper')
        return 'Player 1 (scissors) beats Player 2 (scissors)!'
      when (@hand1 == 'paper' && @hand2 == 'scissors')
        return 'Player 2 (rock) beats Player 2 (scissors)!'
      when @hand1 == @hand2
        return 'Draw!'
      else
        return 'ERROR'
    end
  end

end