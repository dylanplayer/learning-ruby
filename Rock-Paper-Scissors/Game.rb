require_relative "Choice.rb"

class Game
  def initialize(choices)
    @CHOICES = choices
  end

  def play(choice1, choice2)
    if choice1.beats(choice2)
      puts choice1.get_win_phrase
    elsif choice2.beats(choice1)
      puts choice2.get_win_phrase
    else
      puts "Tie!!"
    end
  end

  def get_choice(input)
    @CHOICES.each do | choice |
      if input.downcase == choice.get_name.downcase
        return choice
      end
    end
    return nil
  end
end
