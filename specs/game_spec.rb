require 'minitest/autorun'
require 'minitest/rg'
require_relative '../models/game'

class TestGame < Minitest::Test

  def setup
  end


  def test_rock_paper
    @game1 = Game.new("rock", "paper")
    assert_equal({"object"=>"paper", "player"=>"player2"}, @game1.play)
  end

  def test_paper_rock
    @game2 = Game.new("paper", "rock")
    assert_equal({"object"=>"paper", "player"=>"player1"}, @game2.play)
  end

  def test_rock_scissors
    @game3 = Game.new("rock", "scissors")
    assert_equal({"object"=>"rock", "player"=>"player1"}, @game3.play)
  end

  def test_scissors_rock
    @game4 = Game.new("scissors", "rock")
    assert_equal({"object"=>"rock", "player"=>"player2"}, @game4.play)
  end

  def test_paper_scissors
    @game5 = Game.new("paper", "scissors")
    assert_equal({"object"=>"scissors", "player"=>"player2"}, @game5.play)
  end

  def test_scissors_paper
    @game6 = Game.new("scissors", "paper")
    assert_equal({"object"=>"scissors", "player"=>"player1"}, @game6.play)
  end

end
