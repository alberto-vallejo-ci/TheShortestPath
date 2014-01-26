require 'spec_helper'

describe World do
	describe '#nodes' do
		let(:world){ World.new() }
		it 'should return the world\'s nodes' do
			world.nodes.class.should eq Array
		end
	end
	
	describe '#create_nodes' do
		it 'should return an array' do
			subject.create_nodes.class.should eq Array
		end

		it 'should create an array of nodes' do
			subject.create_nodes[0].class.should eq Node
		end
	end

	describe 'get_association' do
		let(:assoc){
			[	{ node: nodes[1], val_path: 7 },  
				{ node: nodes[2], val_path: 9 },  
				{ node: nodes[5], val_path: 14 } 
			]
		}
		let(:nodes){ subject.create_nodes }
		let(:node){ nodes[0] }

		it 'should return te correspondig association' do
			subject.get_association(node, nodes).should eq assoc
		end
	end

	describe '#create_associations' do
		let(:assoc){
			[	{ node: nodes[1], val_path: 7 },  
				{ node: nodes[2], val_path: 9 },  
				{ node: nodes[5], val_path: 14 } 
			]
		}
		let(:nodes){ subject.create_nodes }
		before { subject.create_associations(nodes) }
		
		it 'should create nodes associatons' do
			nodes[0].neighbors.should eq assoc
		end
	end
end
