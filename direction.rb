module Direction
  def left
    raise 'Abstract Method called. Expected extender to implement this static method'
  end
  
  def right
    raise 'Abstract Method called. Expected extender to implement this static method'
  end

  def move
    raise 'Abstract Method called. Expected extender to implement this static method'
  end
end

class North
  extend Direction
  
  def self.left; West end
  def self.right; East end
  
  def self.move(position)
    position.increment_y
    return position
  end
  
end

class East
  
  extend Direction
  def self.left; North end
  def self.right; South end
  
  def self.move(position)
    position.increment_x
    return position
  end
  
end

class South
  extend Direction
  def self.left; East end
  def self.right; West end
  
  def self.move(position)
    position.decrement_y
    return position
  end
  
end

class West
  extend Direction
  def self.left; South end
  def self.right; North end
  
  def self.move(position)
    position.decrement_x
    return position
  end
  
end