require 'test/unit'
require 'position'
require 'plateau'
require 'rover'

class RoverTest < Test::Unit::TestCase
  def setup
    @plateau = Plateau.new(5, 5)
  end
  
  def test_given_case_one
    rover = Rover.new(@plateau, 1, 2, North)
    rover.turn_left
    rover.move
    rover.turn_left
    rover.move
    rover.turn_left
    rover.move
    rover.turn_left
    rover.move
    rover.move
    assert rover.position == [[1, 3], North]
  end
  
  def test_given_case_two
    rover = Rover.new(@plateau, 3, 3, East)
    rover.move
    rover.move
    rover.turn_right
    rover.move
    rover.move
    rover.turn_right
    rover.move
    rover.turn_right
    rover.turn_right
    rover.move
    assert rover.position == [[5, 1], East]
  end
  
  def test_rover_southern_scope
    rover = Rover.new(@plateau, 0, 0, South)
    e = assert_raise RuntimeError do
      rover.move
    end
    assert_equal e.message, 'Rover going out of southern boundry'
  end
  
  def test_rover_northen_scope
    rover = Rover.new(@plateau, 0, 5, North)
    e = assert_raise RuntimeError do
      rover.move
    end
    assert_equal e.message, 'Rover going out of northen boundry'
  end
  
  def test_rover_eastern_scope
    rover = Rover.new(@plateau, 5, 0, East)
    e = assert_raise RuntimeError do
      rover.move
    end
    assert_equal e.message, 'Rover going out of eastern boundry'
  end  
  
  def test_rover_western_scope
    rover = Rover.new(@plateau, 0, 0, West)
    e = assert_raise RuntimeError do
      rover.move
    end
    assert_equal e.message, 'Rover going out of western boundry'
  end
  
  def test_rover_initial_position
    assert_raise RuntimeError do
      Rover.new(@plateau, 6, 6, West)
    end
    assert_raise RuntimeError do
      Rover.new(@plateau, -1, -1, West)
    end
  end
  
end