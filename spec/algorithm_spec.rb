require './lib/algorithm'

describe Node do
  describe 'new' do
    before do
      @node = Node.new(1)
    end

    it 'Should create a node with id = 1' do
      @node.id.should eq 1
    end
  end
end
