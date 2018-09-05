
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "mosbot"
  spec.version       = "0.2.3"
  spec.authors       = ["Dan Iverson", "Kyle Benson"]
  spec.email         = ["dan@psadmin.io"]
  spec.files         = ["lib/mosbot.rb"]
  spec.summary       = %q{Generates MOS URLs based on a type and number}
  spec.description   = %q{Use mosbot to generate URLs for MOS Docs, Bugs, Ideas and Patches.}
  spec.homepage      = "https://github.com/psadmin-io/mosbot-cli"
  spec.license       = "MIT"

  spec.executables << 'mosbot'

end
