require './lib/stage'

class Contest
  attr_reader :doors, :guess

  def initialize()
    @doors = generate_doors()
    @guess = nil
  end

  def take_guess(guess)
    @guess = @doors.select {|door| door.number == guess}.first
  end

  def remove_door()
    @doors.shuffle.each do |door|
      if door != guess && door.contents == 'goat'
        return @doors.delete(door)
      end
    end
  end

  private

  def generate_doors()
    goat_1 = Door.new(1, 'goat')
    goat_2 = Door.new(2, 'goat')
    car = Door.new(3, 'car')
    @doors = [goat_1, goat_2, car]
  end
end