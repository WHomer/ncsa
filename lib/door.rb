class Door
  attr_reader :number, :contents

  def initialize(number, contents)
    @number = number
    @contents = contents
  end
end