class Game

  def initialize(obj1, obj2)
    @obj1 = obj1
    @obj2 = obj2
  end

  def play
    return 'rock wins!' if
      (@obj1 == 'rock' || @obj2 == 'rock') &&
      (@obj1 == 'scissors' || @obj2 == 'scissors')
    return 'paper wins!' if
      (@obj1 == 'paper' || @obj2 == 'paper') &&
      (@obj1 == 'rock' || @obj2 == 'rock')
    return 'scissors wins!' if
      (@obj1 == 'scissors' || @obj2 == 'scissors') &&
      (@obj1 == 'paper' || @obj2 == 'paper')
  end

end
