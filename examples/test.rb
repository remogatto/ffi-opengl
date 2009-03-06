require 'ffi'
require 'generated/gl_wrap'
require 'generated/glut_wrap'
require 'generated/glu_wrap'

class Grid
  include Enumerable
  class Cell
    attr_reader :x, :y
    [['born', 1], ['die', 0], ['unchanged', '@status']].each do |method, status|
      module_eval(%{def #{method}; @grid[@x, @y] = #{status}; end})
    end
    def initialize(grid, x, y, status)
      @grid = grid
      @x, @y = x, y
      @status = status
    end
    def alive?
      @status == 1
    end
    def alive_neighbours
      [[-1, -1], [0, -1], [1, -1], [1, 0], [1, 1], [0, 1], [-1, 1], [-1, 0]].inject(0) do |sum, cell|
        sum += @grid[@x + cell[0], @y + cell[1]]
      end
    end
    def to_s
      alive? ? "*" : "\033[30m*\033[m"
    end
  end
  def self.generate(width, height)
    self.new(Array.new(height).collect { Array.new(width).collect { rand(2) } })
  end
  def initialize(seed)
    @w, @h = seed.first.size, seed.size
    @cells = seed
    @nextgen = Array.new(@h).map { Array.new(@w) }
  end
  def [](x, y)
    @cells[y % @h][x % @w]
  end
  def []=(x, y, value)
    @nextgen[y % @h][x % @w] = value
  end
  def each(&blk)
    @cells.each_with_index do |row, y|
      row.each_with_index { |col, x| yield Cell.new(self, x, y, self[x, y]) }
    end
  end
  def tick!
    each do |cell|
      if cell.alive?
        (cell.alive_neighbours < 2 || cell.alive_neighbours > 3) ? cell.die : cell.unchanged
      else
        cell.alive_neighbours == 3 ? cell.born : cell.unchanged
      end
    end
    swap
  end
  def to_s
    inject("") do |result, cell|
      result << cell.to_s << (cell.x == (@w - 1) ? "\n" : "")
    end
  end
  def getWidth
    @w
  end
  def getHeight
    @h
  end
  private
  def swap
    temp = @cells
    @cells = @nextgen
    @nextgen = temp
    @cells    
  end
end 

class Display
  include GL, GLUT
  #Original OpenGL code thanks to snex <xens@comcast.net>
  def initialize(grid, block_size)
    @grid = grid
    @block_size = block_size
    @fps = 0
    @time = Time.now
    argc = MemoryPointer.new(:int)
    argv = MemoryPointer.new(:pointer)

    GLUT.glutInit(argc, '')
    GLUT.glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGB)

    #Define the window's size, position and title
    GLUT.glutInitWindowSize(@block_size.to_i * @grid.getWidth, @block_size.to_i * @grid.getHeight)
    GLUT.glutInitWindowPosition(0, 0)
    GLUT.glutCreateWindow("Conway's Game of Life")

    #Set window background to dark bluish-gray
    GL.glClearColor(0.1, 0.1, 0.12, 0.0)
    GL.glMatrixMode(GL_PROJECTION)
    GL.glLoadIdentity()
    GLU.gluOrtho2D(0.0, @grid.getWidth, 0.0, @grid.getHeight)
    GL.glPointSize(@block_size)

    #Enable point blending
    GL.glEnable(GL_BLEND)
    GL.glEnable(GL_POINT_SMOOTH)
    GL.glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA)

    GLUT.glutIdleFunc(method('evolve').to_proc)

    #Seems to work without this callback as well.
    #GLUT.DisplayFunc(method('render').to_proc)

    #Start main loop
    GLUT.glutMainLoop()
  end

  def mouse(button, state, x, y)
    case button
      when 0
      if state == 0
        x = x / @block_size;
        y = y / @block_size;
        puts "x:" + x.to_s
        puts "y:" + y.to_s
        puts @grid[x, y]
      end
    end
  end

  #Render the current generation into the window
  def render
    #Clear window
    GL.glClear(GL_COLOR_BUFFER_BIT)
    GL.glPushMatrix()
    GL.glBegin(GL_POINTS)

    @grid.each do |cell|
      #Color points
      if cell.alive?
        GL.glColor3f(0.65, 0.85, 0.25)
      else 
        GL.glColor3f(0.12, 0.12, 0.12)
      end
      #Draw cells
      GL.glVertex2f(cell.x.to_f, cell.y.to_f)
    end
    GL.glEnd()
    GL.glPopMatrix()
    GLUT.glutSwapBuffers()
  end

  #Evolve to the next generation
  def evolve
    @fps += 1
    @grid.tick!
    #Render the current generation
    render
    if Time.now - @time > 10
      puts "FPS: #{@fps/10}"
      exit
    end
  end
end


if $0 == __FILE__
  args = ARGV.select { |arg| not arg.to_i.zero? }.map { |arg| arg.to_i }
  grid = Grid.generate(args[0] || 40, args[1] || 40)
  display = Display.new(grid, args[2] || 10)
end

