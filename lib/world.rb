class World
	def initialize
		@nodes = create_nodes()
		create_associations(@nodes)
	end
	
	def nodes
		@nodes
	end

	def create_nodes
		nodes = []
		6.times do |index|
			nodes << Node.new(index + 1)	
		end
		nodes
	end

	def create_associations(nodes)
		nodes.each do |node|
			assoc = get_association(node, nodes)
			node.set_neighbors(assoc)
		end
	end

	def get_association(node, nodes)
		case node.id
		when 1
			[	{ node: nodes[1], val_path: 7 },  
				{ node: nodes[2], val_path: 9 },  
				{ node: nodes[5], val_path: 14 } 
			]
		when 2
			[ { node: nodes[0], val_path: 7 },  
				{ node: nodes[2], val_path: 9 },  
				{ node: nodes[3], val_path: 15 } 
			]
		when 3
			[ { node: nodes[0], val_path: 9 },  
				{ node: nodes[1], val_path: 10 }, 
				{ node: nodes[3], val_path: 11 }, 
				{ node: nodes[5], val_path: 2 } 
			]
		when 4
			[ { node: nodes[1], val_path: 15 }, 
				{ node: nodes[2], val_path: 11 }, 
				{ node: nodes[4], val_path: 6 } 
			]
		when 5
			[ { node: nodes[3], val_path: 6 },  
			  { node: nodes[5], val_path: 9 } 
			]
		when 6
			[ { node: nodes[0], val_path: 14 }, 
				{ node: nodes[2], val_path: 2 },  
				{ node: nodes[4], val_path: 9 } 
			]
		end
	end
end
