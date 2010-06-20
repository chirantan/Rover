class Plateau
  
  ORIGIN_X = 0
  ORIGIN_Y = 0
  
  def initialize(plateau_x, plateau_y)
    @plateau_x = plateau_x
    @plateau_y = plateau_y 
  end
  
  def size
    return @plateau_x, @plateau_y
  end
  
end