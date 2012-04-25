require 'rbconfig'
module GL
  extend FFI::Library
  case RbConfig::CONFIG['target_os']
  when /linux/
    ffi_lib 'libGL.so.1'
  when /darwin/
    ffi_lib '/System/Library/Frameworks/OpenGL.framework/Libraries/libGL.dylib'
  end
end
module GLU
  extend FFI::Library
  case RbConfig::CONFIG['target_os']
  when /linux/
    ffi_lib 'libGLU.so.1'
  when /darwin/
    ffi_lib '/System/Library/Frameworks/OpenGL.framework/Libraries/libGLU.dylib'
  end
end
module GLUT
  extend FFI::Library
  case RbConfig::CONFIG['target_os']
  when /linux/
    ffi_lib 'libglut.so.3'
  when /darwin/
    ffi_lib '/System/Library/Frameworks/GLUT.framework/GLUT'
  end
end
