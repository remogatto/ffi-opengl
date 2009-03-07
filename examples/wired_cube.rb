#
# Based on OpenGL CodeColòny tutorial
# http://www.codecolony.de/ 
# 

require File.expand_path(File.join(File.dirname(__FILE__), %w[.. lib ffi-opengl]))

include GL, GLU, GLUT

@light_diffuse = MemoryPointer.new(:float, 4).put_array_of_float(0, [1.0, 0.0, 0.0, 1.0])
@light_position = MemoryPointer.new(:float, 4).put_array_of_float(0, [1.0, 1.0, 1.0, 0.0])
@x_rotated, @y_rotated, @z_rotated = 0.0, 0.0, 0.0

Display = Proc.new {
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
}

Reshape = Proc.new { |x, y|
  exit if (y == 0 || x == 0) 
  glMatrixMode(GL_PROJECTION)  
  glLoadIdentity
  gluPerspective(30.0, x / y, 0.5, 20.0)
  glMatrixMode(GL_MODELVIEW)
  glViewport(0, 0, x, y)
}

Idle = Proc.new {
  @x_rotated += 0.3
  @y_rotated += 0.1
  @z_rotated += -0.4
  Display.call
}

# argc, argv parameters
glutInit(MemoryPointer.new(:int, 1).put_int(0, 0), 
         MemoryPointer.new(:pointer, 1).put_pointer(0, nil))
glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGB)
glutInitWindowSize(300, 300)
glutCreateWindow("Spinning cube example")
glLightfv(GL_LIGHT0, GL_DIFFUSE, @light_diffuse)
glLightfv(GL_LIGHT0, GL_POSITION, @light_position)
glEnable(GL_LIGHT0)
glEnable(GL_LIGHTING)
glEnable(GL_CULL_FACE)
glShadeModel(GL_SMOOTH)
glClearColor(0.0, 0.0, 0.0, 0.0)
glutDisplayFunc(Display)
glutReshapeFunc(Reshape)
glutIdleFunc(Idle)
glutMainLoop
