require 'minitest/autorun'
require './lib/door'

class DoorTest < MiniTest::Test
  def setup
    @door = Door.new(2, 'goat')
  end

  def test_does_it_exist
    assert_instance_of Door, @door
  end

  def test_it_has_access_to_instance_variables
    assert_equal 2, @door.number
    assert_equal 'goat', @door.contents
  end
end