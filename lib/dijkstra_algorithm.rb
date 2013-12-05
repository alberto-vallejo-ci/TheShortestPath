class DijkstraAlgorithm
	def run 
		#Nodes
		n1 = Node.new(1)
		n2 = Node.new(2)
		n3 = Node.new(3)
		n4 = Node.new(4)
		n5 = Node.new(5)
		n6 = Node.new(6)

		#Associations
		a1 = [ { node: n2, val_path: 7 },  { node: n3, val_path: 9 },  { node: n6, val_path: 14 } ]
		a2 = [ { node: n1, val_path: 7 },  { node: n3, val_path: 9 },  { node: n4, val_path: 15 } ]
		a3 = [ { node: n1, val_path: 9 },  { node: n2, val_path: 10 }, { node: n4, val_path: 11 }, { node: n6, val_path: 2 } ]
		a4 = [ { node: n2, val_path: 15 }, { node: n3, val_path: 11 }, { node: n5, val_path: 6 } ]
		a5 = [ { node: n4, val_path: 6 },  { node: n6, val_path: 9 } ]
		a6 = [ { node: n1, val_path: 14 }, { node: n3, val_path: 2 },  { node: n5, val_path: 9 } ]


		#Set associations
		n1.set_neighbors(a1)
		n2.set_neighbors(a2)
		n3.set_neighbors(a3)
		n4.set_neighbors(a4)
		n5.set_neighbors(a5)
		n6.set_neighbors(a6)


		#Algorithm
		init_node = n1
		final_node = n5


		current_node = init_node
		next_node = nil
		trace = "#{current_node.id} ->"


		until current_node == final_node do
		  current_node.current

		  aux_flag = true
		  minimum_length = 0

		  current_node.neighbors().map do |n|
		    unless n[:node].visited?
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
		  end

		  current_node.visited
		  current_node.leave

		  trace = "#{trace} #{next_node.id()} -> "

		  current_node = next_node
		  next_node = nil
		end

		puts trace
	end
end