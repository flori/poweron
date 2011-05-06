begin
  require 'rake/gempackagetask'
rescue LoadError
end
require 'rake/clean'
require 'rbconfig'
include Config

PKG_NAME    = 'poweron'
PKG_VERSION = File.read('VERSION').chomp
PKG_FILES   = FileList['**/*'].exclude(/^(doc|pkg|coverage)/)
CLEAN.include 'coverage', 'doc'

if defined? Gem
  spec = Gem::Specification.new do |s|
    s.name         = PKG_NAME
    s.version      = PKG_VERSION
    s.summary      = "Library to poweron sleeping computers."
    s.description  = "Library to send a wake-on-lan packet in order to poweron a sleeing computer."
    s.author       = "Florian Frank"
    s.email        = "flori@ping.de"
    s.homepage     = "http://flori.github.com/#{PKG_NAME}"
    s.files        = PKG_FILES
    s.require_path = 'lib'
    s.executables << "poweron"
  end

  task :gemspec do
    File.open('poweron.gemspec', 'w') do |output|
      output.write spec.to_ruby
    end
  end

  Rake::GemPackageTask.new(spec) do |pkg|
    pkg.need_tar = true
    pkg.package_files += PKG_FILES
  end
end

desc m = "Writing version information for #{PKG_VERSION}"
task :version do
  puts m
  File.open(File.join('lib', PKG_NAME, 'version.rb'), 'w') do |v|
    v.puts <<EOT
module Poweron
  # Poweron version
  VERSION         = '#{PKG_VERSION}'
  VERSION_ARRAY   = VERSION.split(/\\./).map { |x| x.to_i } # :nodoc:
  VERSION_MAJOR   = VERSION_ARRAY[0] # :nodoc:
  VERSION_MINOR   = VERSION_ARRAY[1] # :nodoc:
  VERSION_BUILD   = VERSION_ARRAY[2] # :nodoc:
end
EOT
  end
end

task :default => [ :version ]

task :release => [ :clobber, :version, :gemspec, :package ]
