# Look in the tasks/setup.rb file for the various options that can be
# configured in this Rakefile. The .rake files in the tasks directory
# are where the options are used.

begin
  require 'bones'
  Bones.setup
rescue LoadError
  begin
    load 'tasks/setup.rb'
  rescue LoadError
    raise RuntimeError, '### please install the "bones" gem ###'
  end
end

ensure_in_path 'lib'
require 'ffi-opengl'

task :default => 'spec:run'

PROJ.name = 'ffi-opengl'
PROJ.authors = 'Andrea Fazzi'
PROJ.email = 'andrea.fazzi@alcacoop.it'
PROJ.url = 'http://github.com/remogatto/ffi-opengl'
PROJ.version = FFIOpenGL::VERSION
PROJ.rubyforge.name = 'ffi-opengl'

PROJ.readme_file = 'README.rdoc'

PROJ.ann.paragraphs << 'FEATURES/PROBLEMS' << 'SYNOPSIS' << 'REQUIREMENTS' << 'DOWNLOAD/INSTALL' << 'LINKS'
PROJ.ann.email[:to] << 'dev@ruby-ffi.kenai.com' << 'users@ruby-ffi.kenai.com'
PROJ.ann.email[:server] = 'smtp.gmail.com'

PROJ.spec.opts << '--color'
PROJ.ruby_opts = []

depend_on 'ffi', '0.3.0'

# EOF
