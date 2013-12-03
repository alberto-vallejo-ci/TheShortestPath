require 'rake/testtask'

require_relative 'lib/node.rb'

Rake::TestTask.new('test:all') do |t|
	t.verbose = true
	t.warning = true
	t.libs = ['spec']
	t.test_files = FileList['spec/*_spec.rb']
end