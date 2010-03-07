Gem::Specification.new do |s|
  s.name              = "gem-sync"
  s.version           = "0.0.2"
  s.date              = "2010-03-07"
  s.summary           = "installs gems from simple .gems list"
  s.homepage          = "http://github.com/gmarik/gem-sync"
  s.email             = "gmarik@gmail.com"
  s.authors           = [ "gmarik" ]
  s.has_rdoc          = false

  s.files             = %w( README.md Rakefile LICENSE )
  s.files            += Dir.glob("lib/**/*")
  s.files            += Dir.glob("bin/**/*")
  s.files            += Dir.glob("man/**/*")
  s.files            += Dir.glob("test/**/*")

  s.description       = <<desc
    simple gem management plugin for rubygems
  deasdf
desc
end
