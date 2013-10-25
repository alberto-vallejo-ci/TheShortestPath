#Nodes
#n_1 = { id: 1, current: false, length: 0, visited: 0, ne: [ { id: 2, val: 7 }, { id: 3, val: 9 }, { id: 6, val: 14 } ] }
#n_2 = { id: 2, current: false, length: 0, visited: 0, ne: [ { id: 1, val: 7 }, { id: 3, val: 9 }, { id: 4, val: 15 } ] }
#n_3 = { id: 3, current: false, length: 0, visited: 0, ne: [ { id: 1, val: 9 }, { id: 2, val: 10 }, { id: 4, val: 11 }, { id: 6, val: 2 } ] }
#n_4 = { id: 4, current: false, length: 0, visited: 0, ne: [ { id: 2, val: 15 }, { id: 3, val: 11 }, { id: 5, val: 6 } ] }
#n_5 = { id: 5, current: false, length: 0, visited: 0, ne: [ { id: 4, val: 6 }, { id: 6, val: 9 } ] }
#n_6 = { id: 6, current: false, length: 0, visited: 0, ne: [ { id: 1, val: 14 }, { id: 3, val: 2 }, { id: 5, val: 9 } ] }

#Node Class
class Node
  def initialize(id, nb)
    @id = id
    @nb = nb
    @current = false
    @length = 0
    @visited = false
  end

  def id
    @id
  end

  def current
    @current
  end

  def length
    @length
  end

  def visited
    @visited
  end

  def nb
    @nb
  end

  def set_current(value)
    @current = value
  end

end


#Nodes
a1 = [ { id: 2, val_path: 7 }, { id: 3, val_path: 9 }, { id: 6, val_path: 14 } ]
a2 = [ { id: 1, val_path: 7 }, { id: 3, val_path: 9 }, { id: 4, val_path: 15 } ]
a3 = [ { id: 1, val_path: 9 }, { id: 2, val_path: 10 }, { id: 4, val_path: 11 }, { id: 6, val_path: 2 } ]
a4 = [ { id: 2, val_path: 15 }, { id: 3, val_path: 11 }, { id: 5, val_path: 6 } ]
a5 = [ { id: 4, val_path: 6 }, { id: 6, val_path: 9 } ]
a6 = [ { id: 1, val_path: 14 }, { id: 3, val_path: 2 }, { id: 5, val_path: 9 } ]

n1 = Node.new(1, a1)
n2 = Node.new(2, a2)
n3 = Node.new(3, a3)
n4 = Node.new(4, a4)
n5 = Node.new(5, a5)
n6 = Node.new(6, a6)


#Algorithm
init_node = n1
final_node = n3


puts init_node.nb()



