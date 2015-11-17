require File.expand_path('../lib/friendly_code', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'friendly_code'
  s.version     = FriendlyCode::VERSION
  s.summary     = <<-EOF
    Generate user-friendly, pseudo-random codes without ambiguous letters 
    or numbers (e.g. 0 vs O vs o).
  EOF
  s.description = <<-EOF
    Generate user-friendly, pseudo-random codes without ambiguous letters
    or numbers (e.g. 0 vs O vs o).

    For scenarios where only computers will be interacting, this is probably 
    the way to go. But when the interaction involves a human, we want to remove
    ambigouity to improve accessibility and ease of reading and entering data.

    Use cases:
    * Entering code sent via SMS into a web page or app
    * Entering code from printed material into a web page or app
  EOF
  s.authors     = ['Matt Swanson']
  s.email       = 'matt@mdswanson.com'
  s.files       = ['lib/friendly_code.rb']
  s.homepage    = 'https://github.com/swanson/friendly_code'
  s.license     = 'MIT'

  s.add_development_dependency 'minitest', '~> 5.8'
  s.add_development_dependency 'rake', '~> 10.4'
end