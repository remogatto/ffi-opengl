%module opengl

%{
module GL
  extend FFI::Library
%}

#define GL_MESA_program_debug
#define GL_ATI_blend_equation_separate

%include gl.h

%{
end
%}
