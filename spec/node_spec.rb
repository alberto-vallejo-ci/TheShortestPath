require 'spec_helper'

describe Node do
	let(:id){ 1 }
	before { @node = Node.new(id) }

	describe '#id' do
		it 'should return the node\'s id' do
			@node.id.should eq id
		end
	end

	describe '#neighbors' do
		it 'should return the node\'s neighbors' do
			@node.neighbors.should eq []
		end
	end

	describe '#visited?' do
		it 'should return the visited\'s status' do
			@node.visited?.should eq false
		end
	end

	describe '#current?' do
		it 'should return the current\'s status' do
			@node.current?.should eq false
		end
	end

	describe '#length' do
		it 'should return the lenght\'s value' do
			@node.length.should eq 0
		end
	end	

	describe '#set_neighbors' do
		before {  @node.set_neighbors([1,1]) }
		
		it 'should update the node\'s neighbors' do
			@node.neighbors.should eq [1 ,1]
		end		
	end

	describe '#set_length' do
		before {  @node.set_length(1) }
		
		it 'should update the node\'s lenght' do
			@node.length.should eq 1
		end		
	end	

	describe '#visited' do
		before {  @node.visited }
		
		it 'should update the node\'s visited status' do
			@node.visited?.should eq true
		end		
	end

	describe '#unvisited' do
		before do  
			@node.visited
			@node.unvisited 
		end
		
		it 'should update the node\'s visited status' do
			@node.visited?.should eq false
		end		
	end

	describe '#current' do
		before do  
			@node.current 
		end
		
		it 'should update the node\'s current status' do
			@node.current?.should eq true
		end		
	end


	describe '#leave' do
		before do  
			@node.current 
			@node.leave
		end
		
		it 'should update the node\'s current status' do
			@node.current?.should eq false
		end		
	end			
end