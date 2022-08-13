# frozen_string_literal: true

desc "Generate Brutal test suite"
task :scaffold do
  print "Generating Brutal test suite... "

  `bundle exec brutal`
  `chmod +x test.rb`

  puts "Done."
end
