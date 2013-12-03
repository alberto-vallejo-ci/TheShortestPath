class Node
  def initialize(id)
    @id = id
    @neighbors = []
    @visited = false
    @current = false
  end

  def id 
    @id
  end

  def neighbors 
    @neighbors
  end

  def visited?
    @visited
  end

  def current?
    @current
  end

  def set_neighbors(values) 
    @neighbors = values
  end

  def visited
    @visited = true
  end

   def unvisited
    @visited = false
  end

  def current 
    @current = true
  end

  def leave 
    @current = false
  end

end