#
# Based on OpenGL CodeColòny tutorial
# http://www.codecolony.de/ 
# 

class SpinningCube
  attr_accessor :light_diffuse, :light_position
  attr_reader :max_frames

  def initialize(max_frames = 0)
    @x_rotated, @y_rotated, @z_rotated = 0.0, 0.0, 0.0
    @frames, @max_frames = 0, max_frames
    glut_init
  end
  
  def glut_init
    glutInit(MemoryPointer.new(:int, 1).put_int(0, 0), 
             MemoryPointer.new(:pointer, 1).put_pointer(0, nil))
  end

  def display
    glClear(GL_COLOR_BUFFER_BIT)
    glLoadIdentity()
    glTranslatef(0.0, 0.0, -5.0)
    glRotatef(@x_rotated, 1.0, 0.0, 0.0)
    glRotatef(@y_rotated, 0.0, 1.0, 0.0)
    glRotatef(@z_rotated, 0.0, 0.0, 1.0)
    glScalef(2.0, 1.0, 1.0)
    glutSolidCube(1.0)
    glFlush		
    glutSwapBuffers
    exit if (@max_frames > 0 and (@frames += 1) > @max_frames)
  end

  def reshape(x, y)
    exit if (y == 0 || x == 0) 
    glMatrixMode(GL_PROJECTION)  
    glLoadIdentity
    gluPerspective(30.0, x / y, 0.5, 20.0)
    glMatrixMode(GL_MODELVIEW)
    glViewport(0, 0, x, y)
  end

  def idle
    @x_rotated += 0.3
    @y_rotated += 0.1
    @z_rotated += -0.4
    display
  end

  def start
    glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGB)
    glutInitWindowSize(300, 300)
    glutCreateWindow("Cube example")
    glLightfv(GL_LIGHT0, GL_DIFFUSE, @light_diffuse)
    glLightfv(GL_LIGHT0, GL_POSITION, @light_position)
    glEnable(GL_LIGHT0)
    glEnable(GL_LIGHTING)
    glEnable(GL_CULL_FACE)
    glShadeModel(GL_SMOOTH)
    glClearColor(0.0, 0.0, 0.0, 0.0)
    glutDisplayFunc(method(:display).to_proc)
    glutIdleFunc(method(:idle).to_proc)
    glutReshapeFunc(method(:reshape).to_proc)
    glutMainLoop
  end
end

if __FILE__ == $0
  require File.expand_path(File.join(File.dirname(__FILE__), %w[.. lib ffi-opengl]))
  include FFI, GL, GLU, GLUT
  app = SpinningCube.new
  app.light_diffuse = MemoryPointer.new(:float, 4).put_array_of_float(0, [1.0, 0.0, 0.0, 1.0])
  app.light_position = MemoryPointer.new(:float, 4).put_array_of_float(0, [1.0, 1.0, 1.0, 0.0])
  app.start
end
