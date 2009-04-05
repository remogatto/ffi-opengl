require File.expand_path(File.join(File.dirname(__FILE__), %w[.. examples spinning_cube]))
require File.expand_path(File.join(File.dirname(__FILE__), %w[.. lib ffi-opengl]))

include FFI, GL, GLU, GLUT
app = SpinningCube.new(ARGV[0].to_i)
app.light_diffuse = MemoryPointer.new(:float, 4).put_array_of_float(0, [1.0, 0.0, 0.0, 1.0])
app.light_position =  MemoryPointer.new(:float, 4).put_array_of_float(0, [1.0, 1.0, 1.0, 0.0])
app.start
