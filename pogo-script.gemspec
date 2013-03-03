Gem::Specification.new do |s|
  s.name      = 'pogo-script'
  s.version   = '0.0.2'
  s.date      = '2013-03-03'

  s.homepage    = "http://github.com/featurist/ruby-pogo-script"
  s.summary     = "Ruby PogoScript Compiler"
  s.description = <<-EOS
    Ruby PogoScript is a bridge to the JS PogoScript compiler.
  EOS

  s.files = [
    'lib/pogo-script.rb',
    'lib/pogo_script.rb',
    'LICENSE',
    'README.md'
  ]

  s.add_dependency 'pogo-script-source'
  s.add_dependency 'execjs'

  s.authors = ['Josh Chisholm']
  s.email   = 'josh@featurist.co.uk'
end
