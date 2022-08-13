# frozen_string_literal: true

require "bundler/gem_tasks"
require "erb"
require "rake/testtask"
require "rubocop/rake_task"

Rake::TestTask.new do |t|
  t.pattern = "test.rb"
  t.verbose = true
  t.warning = true
end

RuboCop::RakeTask.new do |task|
  task.requires << "rubocop-md"
  task.requires << "rubocop-rake"
end

Dir["tasks/**/*.rake"].each { |t| load t }

task default: %i[
  generate_brutal_yml
  scaffold
  rubocop:autocorrect
  test
]
