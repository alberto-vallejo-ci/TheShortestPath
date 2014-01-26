require 'spec_helper'

describe Dijkstra do
	let(:path){ '1 -> 2 ->  3 ->  6 -> ' }

	describe 'run' do
		it 'should return the shortest path' do
			subject.run.should eq path
		end
	end

	describe 'algorithm' do
		let(:path){ '1 -> 2 ->  3 ->  6 -> ' }
		let(:world){ World.new() }
		let(:nodes){ world.nodes }
		let(:init){ nodes[0] }
		let(:final){ nodes[5] } 

		it 'should return a path' do
			subject.algorithm(init, final).should eq path
		end
	end
end