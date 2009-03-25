require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
require 'rake/packagetask'
require 'rake/gempackagetask'

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the open_id_authentication plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the open_id_authentication plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'OpenIdAuthentication'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

NAME = ENV["GEMNAME"] || "open_id_authentication"
DESCRIPTION = "Provides a thin wrapper around the excellent ruby-openid gem from JanRan. gem version is unofficial, github fork of rails's by moro"
AUTHOR = "David Heinemeier Hansson"
EMAIL  = ""
HOMEPAGE = "http//github.com/rails/open_id_authentication"

RDOC_OPTS = [
  '--title', "#{NAME} documentation",
  "--charset", "utf-8",
  "--opname", "index.html",
  "--line-numbers",
  "--main", "README",
  "--inline-source",
]

spec = Gem::Specification.new do |s|
  s.name              = NAME
  s.version           = "1.0.0"
  s.platform          = Gem::Platform::RUBY
  s.has_rdoc          = true
  s.extra_rdoc_files  = ["README", "CHANGElOG"]
  s.rdoc_options     += RDOC_OPTS + ['--exclude', '^(examples|extras)/']
  s.summary           = DESCRIPTION
  s.description       = DESCRIPTION
  s.author            = AUTHOR
  s.email             = EMAIL
  s.homepage          = HOMEPAGE
  s.executables       = []
  s.require_path      = "lib"
  s.test_files        = Dir["test/*_test.rb"]

  s.add_dependency("ruby-openid", ">=2.0.4")
  #s.add_dependency('activesupport', '>=1.3.1')
  #s.required_ruby_version = '>= 1.8.2'

  s.files = %w(README CHANGElOG Rakefile) +
    Dir.glob("{bin,doc,test,lib,templates,generators,extras,website,script}/**/*") +
    Dir.glob("ext/**/*.{h,c,rb}") +
    Dir.glob("examples/**/*.rb") +
    Dir.glob("tools/*.rb") +
    Dir.glob("rails/*.rb")

  s.extensions = FileList["ext/**/extconf.rb"].to_a
end

Rake::GemPackageTask.new(spec) do |p|
  p.need_tar = true
  p.gem_spec = spec
end

desc 'Show information about the gem.'
task :debug_gem do
  puts spec.to_ruby
end

desc 'Update gem spec'
task :gemspec do
  open("#{NAME}.gemspec", 'w').write spec.to_ruby
end

