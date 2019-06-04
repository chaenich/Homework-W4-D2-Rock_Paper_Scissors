class Game

  def initialize(obj1, obj2)
    @obj1 = obj1
    @obj2 = obj2
  end

  def play

    outcome1 = { "object" => @obj1, "player" => "player1" }
    outcome2 = { "object" => @obj2, "player" => "player2" }

    if (@obj1 == 'rock' || @obj2 == 'rock') &&
      (@obj1 == 'scissors' || @obj2 == 'scissors')
      if (@obj1 == 'rock')
        return outcome1
      else
        return outcome2
      end
    elsif (@obj1 == 'paper' || @obj2 == 'paper') &&
      (@obj1 == 'rock' || @obj2 == 'rock')
      if (@obj1 == 'paper')
        return outcome1
      else
        return outcome2
      end
    elsif (@obj1 == 'scissors' || @obj2 == 'scissors') &&
      (@obj1 == 'paper' || @obj2 == 'paper')
      if (@obj1 == 'scissors')
        return outcome1
      else
        return outcome2
      end
    end
  end
end
