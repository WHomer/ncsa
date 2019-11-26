require './lib/door'

class Stage
  attr_reader :doors

  def initialize()
    @doors = []
  end

  def add_door(door)
    @doors << door
  end
end