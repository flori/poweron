# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{poweron}
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Florian Frank"]
  s.date = %q{2011-05-07}
  s.description = %q{Library to send a wake-on-lan packet in order to poweron a sleeing computer.}
  s.email = %q{flori@ping.de}
  s.executables = ["poweron"]
  s.files = ["poweron.gemspec", "Rakefile", "lib", "lib/poweron", "lib/poweron/version.rb", "lib/poweron.rb", "bin", "bin/poweron", "VERSION"]
  s.homepage = %q{http://flori.github.com/poweron}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.7.1}
  s.summary = %q{Library to poweron sleeping computers.}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
