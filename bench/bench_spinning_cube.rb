require File.expand_path(File.join(File.dirname(__FILE__), %w[.. lib ffi-opengl]))

require 'benchmark'

Benchmark.bm do |x|
  x.report('ffi-opengl') { `ruby bench/ffi-opengl_spinning_cube.rb` }
  x.report('ruby-opengl') { `ruby bench/ruby-opengl_spinning_cube.rb` }
end
