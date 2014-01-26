class Dijkstra
	def run
		@world = World.new()
		@nodes = @world.nodes
		init = @nodes[0]
		final = @nodes[5]
		algorithm(init, final)
	end

	def algorithm(init, final)
		init_node = init
		final_node = final

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

		trace
	end
end