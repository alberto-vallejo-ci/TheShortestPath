#Nodes
#n_1 = { id: 1, current: false, length: 0, visited: 0, ne: [ { id: 2, val: 7 }, { id: 3, val: 9 }, { id: 6, val: 14 } ] }
#n_2 = { id: 2, current: false, length: 0, visited: 0, ne: [ { id: 1, val: 7 }, { id: 3, val: 9 }, { id: 4, val: 15 } ] }
#n_3 = { id: 3, current: false, length: 0, visited: 0, ne: [ { id: 1, val: 9 }, { id: 2, val: 10 }, { id: 4, val: 11 }, { id: 6, val: 2 } ] }
#n_4 = { id: 4, current: false, length: 0, visited: 0, ne: [ { id: 2, val: 15 }, { id: 3, val: 11 }, { id: 5, val: 6 } ] }
#n_5 = { id: 5, current: false, length: 0, visited: 0, ne: [ { id: 4, val: 6 }, { id: 6, val: 9 } ] }
#n_6 = { id: 6, current: false, length: 0, visited: 0, ne: [ { id: 1, val: 14 }, { id: 3, val: 2 }, { id: 5, val: 9 } ] }

#Node Class
class Node
  def initialize(id)
    @id = id
    @nb = []
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

  def set_nb(nbs)
    @nb = nbs
  end

  def set_length(value)
    @length = value
  end

  def set_visited(value)
    @visited = value
  end

end


#Nodes
n1 = Node.new(1)
n2 = Node.new(2)
n3 = Node.new(3)
n4 = Node.new(4)
n5 = Node.new(5)
n6 = Node.new(6)

#Assiciations
a1 = [ { node: n2, val_path: 7 },  { node: n3, val_path: 9 },  { node: n6, val_path: 14 } ]
a2 = [ { node: n1, val_path: 7 },  { node: n3, val_path: 9 },  { node: n4, val_path: 15 } ]
a3 = [ { node: n1, val_path: 9 },  { node: n2, val_path: 10 }, { node: n4, val_path: 11 }, { node: n6, val_path: 2 } ]
a4 = [ { node: n2, val_path: 15 }, { node: n3, val_path: 11 }, { node: n5, val_path: 6 } ]
a5 = [ { node: n4, val_path: 6 },  { node: n6, val_path: 9 } ]
a6 = [ { node: n1, val_path: 14 }, { node: n3, val_path: 2 },  { node: n5, val_path: 9 } ]


#Set associations
n1.set_nb(a1)
n2.set_nb(a2)
n3.set_nb(a3)
n4.set_nb(a4)
n5.set_nb(a5)
n6.set_nb(a6)


#Algorithm
init_node = n1
final_node = n3


current_node = init_node
next_node = nil

current_node.set_current(true)

aux_flag = true
minimum_length = 0

current_node.nb().map do |n|
  new_length = n[:val_path] + current_node.length()

  if aux_flag
    minimum_length = new_length
    aux_flag = false
  end

  if new_length <= minimum_length
    minimum_length = new_length
    next_node = n[:node]
  end

  n[:node].set_length(new_length)
end

current_node.set_visited(true)
current_node = next_node
next_node = nil



