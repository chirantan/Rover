class Position
  def initialize(x,y, plateau)
    @x = x
    @y = y
    @plateau = plateau
  end
  
  def increment_x
    @x += 1
  end
  
  def increment_y
    @y += 1
  end
  
  def decrement_x
    @x -= 1
  end
  
  def decrement_y
    @y -= 1
  end
  
  def coordinates
    return @x, @y
  end
  
  def check_boundries
    plateau_x, plateau_y = @plateau.size
    check_northen_boundry(plateau_y)
    check_eastern_boundry(plateau_x)
    check_southern_boundry
    check_western_boundry
  end
  
  private
  
  def check_northen_boundry(plateau_y)
    raise 'Rover going out of northen boundry' if @y > plateau_y
  end
  
  def check_eastern_boundry(plateau_x)
    raise 'Rover going out of eastern boundry' if @x > plateau_x
  end
  
  def check_southern_boundry
    raise 'Rover going out of southern boundry' if @y < Plateau::ORIGIN_Y
  end
  
  def check_western_boundry
    raise 'Rover going out of western boundry' if @x < Plateau::ORIGIN_X
  end
  
end