# -*- encoding: utf-8 -*-
# stub: poweron 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "poweron".freeze
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Florian Frank".freeze]
  s.date = "2022-02-10"
  s.description = "Library to send a wake-on-lan packet in order to poweron a sleeing computer.".freeze
  s.email = "flori@ping.de".freeze
  s.executables = ["poweron".freeze]
  s.extra_rdoc_files = ["README.md".freeze, "lib/poweron.rb".freeze, "lib/poweron/version.rb".freeze]
  s.files = [".gitignore".freeze, "Gemfile".freeze, "README.md".freeze, "Rakefile".freeze, "VERSION".freeze, "bin/poweron".freeze, "lib/poweron.rb".freeze, "lib/poweron/version.rb".freeze, "poweron.gemspec".freeze]
  s.homepage = "https://github.com/flori/poweron".freeze
  s.licenses = ["MIT".freeze]
  s.rdoc_options = ["--title".freeze, "Poweron -- wakes up sleeping computers".freeze, "--main".freeze, "README.md".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0".freeze)
  s.rubygems_version = "3.2.32".freeze
  s.summary = "Library to power on sleeping computers,".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<gem_hadar>.freeze, ["~> 1.11.0"])
  else
    s.add_dependency(%q<gem_hadar>.freeze, ["~> 1.11.0"])
  end
end
