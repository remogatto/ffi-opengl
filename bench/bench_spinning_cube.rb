#!/usr/bin/env ruby

$:.unshift(File.expand_path(File.join(File.dirname(__FILE__), "..", "lib")))
require 'ffi-opengl'

require 'benchmark'

MAX_FRAMES = 30000

Benchmark.bm do |x|
  x.report('ffi-opengl') { `ruby bench/ffi-opengl_spinning_cube.rb #{MAX_FRAMES}` }
  x.report('ruby-opengl') { `ruby bench/ruby-opengl_spinning_cube.rb #{MAX_FRAMES}` }
end
