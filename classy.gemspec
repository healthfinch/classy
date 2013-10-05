lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'classy/version'
require 'date'

Gem::Specification.new do |gem|
  gem.name    = "classy"
  gem.version = Classy::Version.string
  gem.date    = Date.today

  gem.summary     = "A refactor of the Bayes class from the classifier gem, made to play nice with Rails."
  gem.description = "A Bayes classifer with hooks into Rails."

  gem.authors     = ["Neil Goodman"]
  gem.email       = ["neil@healthfinch.com"]

  gem.require_paths = ["lib"]

  gem.files       = `git ls-files`.split("\n")
  gem.license     = "LGPL"

  gem.add_runtime_dependency "ruby-stemmer", "~> 0.9.3"
end