require 'direction'
require 'rubygems'

class Rover
  def initialize(plateau, x, y, direction)
    @position = Position.new(x, y, plateau)
    @position.check_boundries
    @direction = direction
  end
  
  def turn_left
    @direction = @direction.left
  end
  
  def turn_right
    @direction = @direction.right
  end
  
  def move
    @position = @direction.move(@position)
    @position.check_boundries
  end
  
  def position
    return [@position.coordinates, @direction]
  end
  
end
