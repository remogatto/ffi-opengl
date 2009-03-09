module GL
  extend FFI::Library
  case RUBY_PLATFORM
  when /linux/
    ffi_lib 'GL'
  when /darwin/
    ffi_lib '/System/Library/Frameworks/OpenGL.framework/Libraries/libGL.dylib'
  end
end
module GLU
  extend FFI::Library
  case RUBY_PLATFORM
  when /linux/
    ffi_lib 'GLU'
  when /darwin/
    ffi_lib '/System/Library/Frameworks/OpenGL.framework/Libraries/libGLU.dylib'
  end
end
module GLUT
  extend FFI::Library
  case RUBY_PLATFORM
  when /linux/
    ffi_lib 'glut'
  when /darwin/
    ffi_lib '/System/Library/Frameworks/GLUT.framework/GLUT'
  end
end
