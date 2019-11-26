require 'minitest/autorun'
require './lib/contest'

class SimulationTest < MiniTest::Test
  def setup
    @correct = 0
    10000.times do
      contest = Contest.new
      random_guess = (rand * 3).ceil
      contest.take_guess(random_guess)
      contest.remove_door()
      # swith guess to other door
      switch_guess = contest.doors.select {|door| door != contest.guess}.first
      # set guess to switched_guess
      contest.take_guess(switch_guess.number)
      # Increment correct counter when the correct answer is guessed
      @correct += 1 if contest.guess.contents == 'car'
    end
  end
  
  

  def test_results
    assert_equal 66, (@correct / 100).to_i
  end
end