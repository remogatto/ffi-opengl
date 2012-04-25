#!/usr/bin/env ruby

# 3-D gear wheels. This program is in the public domain.
#
# Command line options:
#    -info      print GL implementation information
#    -exit      automatically exit after 30 seconds
#
# 2005-05-01 Ruby version by Arto Bendiken based on gears.c rev 1.8.
# 2005-01-09 Original C version (gears.c) by Brian Paul et al.
# http://cvs.freedesktop.org/mesa/Mesa/progs/demos/gears.c?rev=1.8

$:.unshift(File.expand_path(File.join(File.dirname(__FILE__), "..", "lib")))
require 'ffi-opengl'

class Gears
  include FFI, GL, GLU, GLUT, Math

  POS = MemoryPointer.new(:float, 4).put_array_of_float(0, [5.0, 5.0, 10.0, 0.0])
  RED = MemoryPointer.new(:float, 4).put_array_of_float(0, [0.8, 0.1, 0.0, 1.0]) 
  GREEN = MemoryPointer.new(:float, 4).put_array_of_float(0, [0.0, 0.8, 0.2, 1.0])
  BLUE = MemoryPointer.new(:float, 4).put_array_of_float(0, [0.2, 0.2, 1.0, 1.0]) 

  include Math

  # Draw a gear wheel. You'll probably want to call this function when
  # building a display list since we do a lot of trig here.
  #
  # Input:  inner_radius - radius of hole at center
  #         outer_radius - radius at center of teeth
  #         width - width of gear
  #         teeth - number of teeth
  #         tooth_depth - depth of tooth
  def gear(inner_radius, outer_radius, width, teeth, tooth_depth)
    r0 = inner_radius
    r1 = outer_radius - tooth_depth / 2.0
    r2 = outer_radius + tooth_depth / 2.0

    da = 2.0 * PI / teeth / 4.0

    glShadeModel(GL_FLAT)

    glNormal3f(0.0, 0.0, 1.0)

    # Draw front face
    glBegin(GL_QUAD_STRIP)
    for i in 0..teeth
      angle = i * 2.0 * PI / teeth
      glVertex3f(r0 * cos(angle), r0 * sin(angle), width * 0.5)
      glVertex3f(r1 * cos(angle), r1 * sin(angle), width * 0.5)
      if i < teeth
        glVertex3f(r0 * cos(angle), r0 * sin(angle), width * 0.5)
        glVertex3f(r1 * cos(angle + 3 * da),
          r1 * sin(angle + 3 * da), width * 0.5)
      end
    end
    glEnd()
  
    # Draw front sides of teeth
    glBegin(GL_QUADS)
    for i in 0...teeth
      angle = i * 2.0 * PI / teeth
      glVertex3f(r1 * cos(angle), r1 * sin(angle), width * 0.5)
      glVertex3f(r2 * cos(angle + da), r2 * sin(angle + da), width * 0.5)
      glVertex3f(r2 * cos(angle + 2 * da),
        r2 * sin(angle + 2 * da), width * 0.5)
      glVertex3f(r1 * cos(angle + 3 * da),
        r1 * sin(angle + 3 * da), width * 0.5)
    end
    glEnd()
  
    glNormal3f(0.0, 0.0, -1.0)
  
    # Draw back face
    glBegin(GL_QUAD_STRIP)
    for i in 0..teeth
      angle = i * 2.0 * PI / teeth
      glVertex3f(r1 * cos(angle), r1 * sin(angle), -width * 0.5)
      glVertex3f(r0 * cos(angle), r0 * sin(angle), -width * 0.5)
      if i < teeth
        glVertex3f(r1 * cos(angle + 3 * da),
          r1 * sin(angle + 3 * da), -width * 0.5)
        glVertex3f(r0 * cos(angle), r0 * sin(angle), -width * 0.5)
      end
    end
    glEnd()
  
    # Draw back sides of teeth
    glBegin(GL_QUADS)
    for i in 0...teeth
      angle = i * 2.0 * PI / teeth
      glVertex3f(r1 * cos(angle + 3 * da),
        r1 * sin(angle + 3 * da), -width * 0.5)
      glVertex3f(r2 * cos(angle + 2 * da),
        r2 * sin(angle + 2 * da), -width * 0.5)
      glVertex3f(r2 * cos(angle + da), r2 * sin(angle + da), -width * 0.5)
      glVertex3f(r1 * cos(angle), r1 * sin(angle), -width * 0.5)
    end
    glEnd()
  
    # Draw outward faces of teeth
    glBegin(GL_QUAD_STRIP)
    for i in 0...teeth
      angle = i * 2.0 * PI / teeth
      glVertex3f(r1 * cos(angle), r1 * sin(angle), width * 0.5)
      glVertex3f(r1 * cos(angle), r1 * sin(angle), -width * 0.5)
      u = r2 * cos(angle + da) - r1 * cos(angle)
      v = r2 * sin(angle + da) - r1 * sin(angle)
      len = sqrt(u * u + v * v)
      u /= len
      v /= len
      glNormal3f(v, -u, 0.0)
      glVertex3f(r2 * cos(angle + da), r2 * sin(angle + da), width * 0.5)
      glVertex3f(r2 * cos(angle + da), r2 * sin(angle + da), -width * 0.5)
      glNormal3f(cos(angle), sin(angle), 0.0)
      glVertex3f(r2 * cos(angle + 2 * da),
        r2 * sin(angle + 2 * da), width * 0.5)
      glVertex3f(r2 * cos(angle + 2 * da),
        r2 * sin(angle + 2 * da), -width * 0.5)
      u = r1 * cos(angle + 3 * da) - r2 * cos(angle + 2 * da)
      v = r1 * sin(angle + 3 * da) - r2 * sin(angle + 2 * da)
      glNormal3f(v, -u, 0.0)
      glVertex3f(r1 * cos(angle + 3 * da),
        r1 * sin(angle + 3 * da), width * 0.5)
      glVertex3f(r1 * cos(angle + 3 * da),
        r1 * sin(angle + 3 * da), -width * 0.5)
      glNormal3f(cos(angle), sin(angle), 0.0)
    end
    glVertex3f(r1 * cos(0), r1 * sin(0), width * 0.5)
    glVertex3f(r1 * cos(0), r1 * sin(0), -width * 0.5)
    glEnd()
  
    glShadeModel(GL_SMOOTH)
  
    # Draw inside radius cylinder
    glBegin(GL_QUAD_STRIP)
    for i in 0..teeth
      angle = i * 2.0 * PI / teeth
      glNormal3f(-cos(angle), -sin(angle), 0.0)
      glVertex3f(r0 * cos(angle), r0 * sin(angle), -width * 0.5)
      glVertex3f(r0 * cos(angle), r0 * sin(angle), width * 0.5)
    end
    glEnd()
  end

  def draw
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    glPushMatrix()
    glRotatef(@view_rotx, 1.0, 0.0, 0.0)
    glRotatef(@view_roty, 0.0, 1.0, 0.0)
    glRotatef(@view_rotz, 0.0, 0.0, 1.0)

    glPushMatrix()
    glTranslatef(-3.0, -2.0, 0.0)
    glRotatef(@angle, 0.0, 0.0, 1.0)
    glCallList(@gear1)
    glPopMatrix()

    glPushMatrix()
    glTranslatef(3.1, -2.0, 0.0)
    glRotatef(-2.0 * @angle - 9.0, 0.0, 0.0, 1.0)
    glCallList(@gear2)
    glPopMatrix()

    glPushMatrix()
    glTranslatef(-3.1, 4.2, 0.0)
    glRotatef(-2.0 * @angle - 25.0, 0.0, 0.0, 1.0)
    glCallList(@gear3)
    glPopMatrix()

    glPopMatrix()

    glutSwapBuffers()

    @frames = 0 if not defined? @frames
    @t0 = 0 if not defined? @t0

    @frames += 1
    t = glutGet(GLUT_ELAPSED_TIME)
    if t - @t0 >= 5000
      seconds = (t - @t0) / 1000.0
      fps = @frames / seconds
      printf("%d frames in %6.3f seconds = %6.3f FPS\n",
        @frames, seconds, fps)
      @t0, @frames = t, 0
      exit if defined? @autoexit and t >= 999.0 * @autoexit
    end
  end

  def idle
    t = glutGet(GLUT_ELAPSED_TIME) / 1000.0
    @t0_idle = t if !defined? @t0_idle
    # 90 degrees per second
    @angle += 70.0 * (t - @t0_idle)
    @t0_idle = t
    glutPostRedisplay()
  end

  # Change view angle, exit upon ESC
  def key(k, x, y)
    case k
      when ?z.ord
        @view_rotz += 5.0
      when ?Z.ord
        @view_rotz -= 5.0
      when 27 # Escape
        exit
    end
    glutPostRedisplay()
  end

  # Change view angle
  def special(k, x, y)
    case k
      when GLUT_KEY_UP
        @view_rotx += 5.0
      when GLUT_KEY_DOWN
        @view_rotx -= 5.0
      when GLUT_KEY_LEFT
        @view_roty += 5.0
      when GLUT_KEY_RIGHT
        @view_roty -= 5.0
    end
    glutPostRedisplay()
  end

  # New window size or exposure
  def reshape(width, height)
    h = height.to_f / width.to_f
    glViewport(0, 0, width, height)
    glMatrixMode(GL_PROJECTION)
    glLoadIdentity()
    glFrustum(-1.0, 1.0, -h, h, 5.0, 60.0)
    glMatrixMode(GL_MODELVIEW)
    glLoadIdentity()
    glTranslatef(0.0, 0.0, -40.0)
  end

  def init
    @angle = 0.0
    @view_rotx, @view_roty, @view_rotz = 20.0, 30.0, 0.0

    glLightfv(GL_LIGHT0, GL_POSITION, POS)
    glEnable(GL_CULL_FACE)
    glEnable(GL_LIGHTING)
    glEnable(GL_LIGHT0)
    glEnable(GL_DEPTH_TEST)

    # Make the gears
    @gear1 = glGenLists(1)
    glNewList(@gear1, GL_COMPILE)
    glMaterialfv(GL_FRONT, GL_AMBIENT_AND_DIFFUSE, RED)
    gear(1.0, 4.0, 1.0, 20, 0.7)
    glEndList()

    @gear2 = glGenLists(1)
    glNewList(@gear2, GL_COMPILE)
    glMaterialfv(GL_FRONT, GL_AMBIENT_AND_DIFFUSE, GREEN)
    gear(0.5, 2.0, 2.0, 10, 0.7)
    glEndList()

    @gear3 = glGenLists(1)
    glNewList(@gear3, GL_COMPILE)
    glMaterialfv(GL_FRONT, GL_AMBIENT_AND_DIFFUSE, BLUE)
    gear(1.3, 2.0, 0.5, 10, 0.7)
    glEndList()

    glEnable(GL_NORMALIZE)

    ARGV.each do |arg|
      case arg
        when '-info'
          printf("GL_RENDERER   = %s\n", glGetString(GL_RENDERER))
          printf("GL_VERSION    = %s\n", glGetString(GL_VERSION))
          printf("GL_VENDOR     = %s\n", glGetString(GL_VENDOR))
          printf("GL_EXTENSIONS = %s\n", glGetString(GL_EXTENSIONS))
        when '-exit'
          @autoexit = 30
          printf("Auto Exit after %i seconds.\n", @autoexit);
      end
    end
  end

  def visible(vis)
    glutIdleFunc((vis == GLUT_VISIBLE ? make_callback(:idle) : nil))
  end

  def mouse(button, state, x, y)
    @mouse = state
    @x0, @y0 = x, y
  end
  
  def motion(x, y)
    if @mouse == GLUT_DOWN then
      @view_roty += @x0 - x
      @view_rotx += @y0 - y
    end
    @x0, @y0 = x, y
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

  def initialize
    # argc, argv parameters
    glutInit(MemoryPointer.new(:int, 1).put_int(0, 0), 
             MemoryPointer.new(:pointer, 1).put_pointer(0, nil))
    glutInitDisplayMode(GLUT_RGB | GLUT_DEPTH | GLUT_DOUBLE)

    glutInitWindowPosition(0, 0)
    glutInitWindowSize(300, 300)
    glutCreateWindow('Gears')
    init()

    glutDisplayFunc(make_callback(:draw))
    glutReshapeFunc(make_callback(:reshape))
    glutKeyboardFunc(make_callback(:key))
    glutSpecialFunc(make_callback(:special))
    glutVisibilityFunc(make_callback(:visible))
    glutMouseFunc(make_callback(:mouse))
    glutMotionFunc(make_callback(:motion))
  end

  def start
    glutMainLoop()
  end

end

Gears.new.start


