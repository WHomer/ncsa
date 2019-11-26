require 'minitest/autorun'
require './lib/stage'

class StageTest < MiniTest::Test
  def setup
    @stage = Stage.new()
  end

  def test_does_it_exist
    assert_instance_of Stage, @stage
  end
  
  def test_it_has_no_doors
    assert_equal [], @stage.doors
  end

  def test_you_can_add_doors
    door_1 = Door.new(1, 'goat')
    @stage.add_door(door_1)

    assert_equal [door_1], @stage.doors
  end
end