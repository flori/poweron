# vim: set filetype=ruby et sw=2 ts=2:

require 'gem_hadar'

GemHadar do
  name        'poweron'
  author      'Florian Frank'
  email       'flori@ping.de'
  homepage    "https://github.com/flori/#{name}"
  summary     'Library to power on sleeping computers,'
  description 'Library to send a wake-on-lan packet in order to poweron a sleeing computer.'
  ignore      '.*.sw[pon]', 'pkg', 'Gemfile.lock', 'coverage', '.rvmrc',
    '.AppleDouble', 'tags', '.byebug_history', '.DS_Store'
  readme      'README.md'
  title       "#{name.camelize} -- wakes up sleeping computers"

  executables << 'poweron'

  required_ruby_version '>= 2.0'
  licenses << 'MIT'
end
