
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "mosbot/cli/version"

Gem::Specification.new do |spec|
  spec.name          = "mosbot-cli"
  spec.version       = Mosbot::Cli::VERSION
  spec.authors       = ["Dan Iverson", "Kyle Benson"]
  spec.email         = ["dan@psadmin.io", "kyle@psadmin.io"]

  spec.summary       = %q{Generates MOS URLs based on a type and number}
  spec.description   = %q{Use mosbot to generate URLs for MOS Docs, Bugs, Ideas and Patches.}
  spec.homepage      = "https://github.com/psadmin-io/mosbot-cli"
  spec.license       = "MIT"

end
