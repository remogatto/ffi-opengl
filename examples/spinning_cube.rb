#!/usr/bin/env ruby

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
    gluPerspective(30.0, x.to_f / y, 0.5, 20.0)
    glMatrixMode(GL_MODELVIEW)
    glViewport(0, 0, x, y)
  end

  def idle
    @x_rotated += 0.3
    @y_rotated += 0.1
    @z_rotated += -0.4
    glutPostRedisplay()
  end
    
    def key(k, x, y)
      case k
        when ?a.ord
            @y_rotated += 0.1
        when ?d.ord
            @y_rotated -= 0.1
        when 27 # Escape
            exit
        end
        glutPostRedisplay()
    end
    
    def special(k, x, y)
        case k
        when GLUT_KEY_UP
            @x_rotated += 5.0
        when GLUT_KEY_DOWN
            @x_rotated -= 5.0
        when GLUT_KEY_LEFT
            @y_rotated += 5.0
        when GLUT_KEY_RIGHT
            @y_rotated -= 5.0
        end
        glutPostRedisplay()
    end
  
  def make_callback(sym)
      if(@callbacks == nil)
          @callbacks = {}
      end
      if(@callbacks[sym] == nil)
          @callbacks[sym] = method(sym).to_proc
      end
      @callbacks[sym]
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
    glutDisplayFunc(make_callback(:display))
    glutIdleFunc(make_callback(:idle))
    glutReshapeFunc(make_callback(:reshape))
    glutSpecialFunc(make_callback(:special))
    glutKeyboardFunc(make_callback(:key))
    glutSpecialFunc(make_callback(:special))
    glutMainLoop
  end
end

if __FILE__ == $0
  $:.unshift(File.expand_path(File.join(File.dirname(__FILE__), "..", "lib")))
  require 'ffi-opengl'
  include FFI, GL, GLU, GLUT
  app = SpinningCube.new
  app.light_diffuse = MemoryPointer.new(:float, 4).put_array_of_float(0, [1.0, 0.0, 0.0, 1.0])
  app.light_position = MemoryPointer.new(:float, 4).put_array_of_float(0, [1.0, 1.0, 1.0, 0.0])
  app.start
end
