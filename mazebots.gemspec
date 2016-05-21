# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mazebots/version'

Gem::Specification.new do |spec|
  spec.name          = "mazebots"
  spec.version       = Mazebots::VERSION
  spec.authors       = ["Sille Van Landschoot"]
  spec.email         = ["info@sillevl.be"]

  spec.summary       = %q{Remote control m3pi robots using the Touchberry Pi shield and xbee}
  spec.description   = %q{Remote control m3pi robots using the Touchberry Pi shield and xbee}
  spec.homepage      = "https://github.com/99-bugs/touchberrypi-m3pi"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"

  spec.add_dependency "touchberrypi"
  spec.add_dependency "m3pi"
end
