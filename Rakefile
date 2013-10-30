task :default => :bin

desc "Run lib/fraccion.rb"
task :bin do
  sh "ruby lib/fraccion.rb"
end

desc "Run test with --format documentation"
task :spec do
   sh "rspec -I. rspec/rspec_p6.rb --format documentation"
end

desc "Run test with format: html"
 task:thtml do
    sh" rspec -I. rspec/rspec_p6.rb --format html"
 end