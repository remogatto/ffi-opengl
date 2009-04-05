require 'rubygems'
require 'opengl'

require File.expand_path(File.join(File.dirname(__FILE__), %w[.. examples spinning_cube]))

class SpinningCube
  def glut_init
    glutInit
  end
end

app = SpinningCube.new(ARGV[0].to_i)
app.light_diffuse = [1.0, 0.0, 0.0, 1.0]
app.light_position = [1.0, 1.0, 1.0, 0.0]
app.start
