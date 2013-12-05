require 'rspec/core/rake_task'

require_relative 'lib/node'
require_relative 'lib/dijkstra_algorithm'

task default: :spec

RSpec::Core::RakeTask.new(:spec)

task :run do
	DijkstraAlgorithm.new().run()
end