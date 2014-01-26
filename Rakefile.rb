require 'rspec/core/rake_task'

require_relative 'lib/dijkstra'
require_relative 'lib/world'
require_relative 'lib/node'

task default: :spec

RSpec::Core::RakeTask.new(:spec)

task :run do
	path = Dijkstra.new().run()
	puts path
end