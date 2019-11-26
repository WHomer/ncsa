require 'minitest/autorun'
require './lib/contest'

class ContestTest < MiniTest::Test
  def setup
    @contest = Contest.new()
  end

  def test_does_it_exist
    assert_instance_of Contest, @contest
  end

  def test_it_has_instance_variables
    assert_equal 3, @contest.doors.length
    assert_nil @contest.guess
  end

  def test_take_guess
    @contest.take_guess(2)

    assert_equal 2, @contest.guess.number
  end

  def test_remove_door
    @contest.remove_door()

    assert_equal 2, @contest.doors.length
  end
end