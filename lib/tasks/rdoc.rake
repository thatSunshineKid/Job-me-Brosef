require 'rdoc/task'

Rake::RDocTask.new do |rdoc|
    rdoc.rdoc_files.include('README.rdoc')
    rdoc.rdoc_files.include('app/*/*.rb')
    rdoc.main = "README.md"
    rdoc.title = "Job-Me-Brosef Documentation"
    rdoc.rdoc_dir = 'rdoc'
end