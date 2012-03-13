Gem::Specification.new do |s|
  s.name          = 'statsd'
  s.version       = '0.1.0'
  s.date          = '2012-03-13'
  s.summary       = "an statsd daemon like"
  s.description   = s.summary
  
  s.add_dependency 'eventmachine', ['>= 1.0.0.beta.3']
  
  s.add_dependency(%q<rcov>, [">= 0"])
  s.add_dependency(%q<rspec>, ["~> 2.3.0"])
  s.add_dependency(%q<yard>, ["~> 0.6.0"])
  
  s.authors       = ["fonzo14"]
  s.require_paths = ["lib"]
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features,contrib}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.homepage      = 'http://github.com/fonzo14/statsd_rb'
end