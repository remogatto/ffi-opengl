
module GLU
  extend FFI::Library
  GLU_EXT_object_space_tess = 1
  GLU_EXT_nurbs_tessellator = 1
  GLU_FALSE = 0
  GLU_TRUE = 1
  GLU_VERSION_1_1 = 1
  GLU_VERSION_1_2 = 1
  GLU_VERSION_1_3 = 1
  GLU_VERSION = 100800
  GLU_EXTENSIONS = 100801
  GLU_INVALID_ENUM = 100900
  GLU_INVALID_VALUE = 100901
  GLU_OUT_OF_MEMORY = 100902
  GLU_INCOMPATIBLE_GL_VERSION = 100903
  GLU_INVALID_OPERATION = 100904
  GLU_OUTLINE_POLYGON = 100240
  GLU_OUTLINE_PATCH = 100241
  GLU_NURBS_ERROR = 100103
  GLU_ERROR = 100103
  GLU_NURBS_BEGIN = 100164
  GLU_NURBS_BEGIN_EXT = 100164
  GLU_NURBS_VERTEX = 100165
  GLU_NURBS_VERTEX_EXT = 100165
  GLU_NURBS_NORMAL = 100166
  GLU_NURBS_NORMAL_EXT = 100166
  GLU_NURBS_COLOR = 100167
  GLU_NURBS_COLOR_EXT = 100167
  GLU_NURBS_TEXTURE_COORD = 100168
  GLU_NURBS_TEX_COORD_EXT = 100168
  GLU_NURBS_END = 100169
  GLU_NURBS_END_EXT = 100169
  GLU_NURBS_BEGIN_DATA = 100170
  GLU_NURBS_BEGIN_DATA_EXT = 100170
  GLU_NURBS_VERTEX_DATA = 100171
  GLU_NURBS_VERTEX_DATA_EXT = 100171
  GLU_NURBS_NORMAL_DATA = 100172
  GLU_NURBS_NORMAL_DATA_EXT = 100172
  GLU_NURBS_COLOR_DATA = 100173
  GLU_NURBS_COLOR_DATA_EXT = 100173
  GLU_NURBS_TEXTURE_COORD_DATA = 100174
  GLU_NURBS_TEX_COORD_DATA_EXT = 100174
  GLU_NURBS_END_DATA = 100175
  GLU_NURBS_END_DATA_EXT = 100175
  GLU_NURBS_ERROR1 = 100251
  GLU_NURBS_ERROR2 = 100252
  GLU_NURBS_ERROR3 = 100253
  GLU_NURBS_ERROR4 = 100254
  GLU_NURBS_ERROR5 = 100255
  GLU_NURBS_ERROR6 = 100256
  GLU_NURBS_ERROR7 = 100257
  GLU_NURBS_ERROR8 = 100258
  GLU_NURBS_ERROR9 = 100259
  GLU_NURBS_ERROR10 = 100260
  GLU_NURBS_ERROR11 = 100261
  GLU_NURBS_ERROR12 = 100262
  GLU_NURBS_ERROR13 = 100263
  GLU_NURBS_ERROR14 = 100264
  GLU_NURBS_ERROR15 = 100265
  GLU_NURBS_ERROR16 = 100266
  GLU_NURBS_ERROR17 = 100267
  GLU_NURBS_ERROR18 = 100268
  GLU_NURBS_ERROR19 = 100269
  GLU_NURBS_ERROR20 = 100270
  GLU_NURBS_ERROR21 = 100271
  GLU_NURBS_ERROR22 = 100272
  GLU_NURBS_ERROR23 = 100273
  GLU_NURBS_ERROR24 = 100274
  GLU_NURBS_ERROR25 = 100275
  GLU_NURBS_ERROR26 = 100276
  GLU_NURBS_ERROR27 = 100277
  GLU_NURBS_ERROR28 = 100278
  GLU_NURBS_ERROR29 = 100279
  GLU_NURBS_ERROR30 = 100280
  GLU_NURBS_ERROR31 = 100281
  GLU_NURBS_ERROR32 = 100282
  GLU_NURBS_ERROR33 = 100283
  GLU_NURBS_ERROR34 = 100284
  GLU_NURBS_ERROR35 = 100285
  GLU_NURBS_ERROR36 = 100286
  GLU_NURBS_ERROR37 = 100287
  GLU_AUTO_LOAD_MATRIX = 100200
  GLU_CULLING = 100201
  GLU_SAMPLING_TOLERANCE = 100203
  GLU_DISPLAY_MODE = 100204
  GLU_PARAMETRIC_TOLERANCE = 100202
  GLU_SAMPLING_METHOD = 100205
  GLU_U_STEP = 100206
  GLU_V_STEP = 100207
  GLU_NURBS_MODE = 100160
  GLU_NURBS_MODE_EXT = 100160
  GLU_NURBS_TESSELLATOR = 100161
  GLU_NURBS_TESSELLATOR_EXT = 100161
  GLU_NURBS_RENDERER = 100162
  GLU_NURBS_RENDERER_EXT = 100162
  GLU_OBJECT_PARAMETRIC_ERROR = 100208
  GLU_OBJECT_PARAMETRIC_ERROR_EXT = 100208
  GLU_OBJECT_PATH_LENGTH = 100209
  GLU_OBJECT_PATH_LENGTH_EXT = 100209
  GLU_PATH_LENGTH = 100215
  GLU_PARAMETRIC_ERROR = 100216
  GLU_DOMAIN_DISTANCE = 100217
  GLU_MAP1_TRIM_2 = 100210
  GLU_MAP1_TRIM_3 = 100211
  GLU_POINT = 100010
  GLU_LINE = 100011
  GLU_FILL = 100012
  GLU_SILHOUETTE = 100013
  GLU_SMOOTH = 100000
  GLU_FLAT = 100001
  GLU_NONE = 100002
  GLU_OUTSIDE = 100020
  GLU_INSIDE = 100021
  GLU_TESS_BEGIN = 100100
  GLU_BEGIN = 100100
  GLU_TESS_VERTEX = 100101
  GLU_VERTEX = 100101
  GLU_TESS_END = 100102
  GLU_END = 100102
  GLU_TESS_ERROR = 100103
  GLU_TESS_EDGE_FLAG = 100104
  GLU_EDGE_FLAG = 100104
  GLU_TESS_COMBINE = 100105
  GLU_TESS_BEGIN_DATA = 100106
  GLU_TESS_VERTEX_DATA = 100107
  GLU_TESS_END_DATA = 100108
  GLU_TESS_ERROR_DATA = 100109
  GLU_TESS_EDGE_FLAG_DATA = 100110
  GLU_TESS_COMBINE_DATA = 100111
  GLU_CW = 100120
  GLU_CCW = 100121
  GLU_INTERIOR = 100122
  GLU_EXTERIOR = 100123
  GLU_UNKNOWN = 100124
  GLU_TESS_WINDING_RULE = 100140
  GLU_TESS_BOUNDARY_ONLY = 100141
  GLU_TESS_TOLERANCE = 100142
  GLU_TESS_ERROR1 = 100151
  GLU_TESS_ERROR2 = 100152
  GLU_TESS_ERROR3 = 100153
  GLU_TESS_ERROR4 = 100154
  GLU_TESS_ERROR5 = 100155
  GLU_TESS_ERROR6 = 100156
  GLU_TESS_ERROR7 = 100157
  GLU_TESS_ERROR8 = 100158
  GLU_TESS_MISSING_BEGIN_POLYGON = 100151
  GLU_TESS_MISSING_BEGIN_CONTOUR = 100152
  GLU_TESS_MISSING_END_POLYGON = 100153
  GLU_TESS_MISSING_END_CONTOUR = 100154
  GLU_TESS_COORD_TOO_LARGE = 100155
  GLU_TESS_NEED_COMBINE_CALLBACK = 100156
  GLU_TESS_WINDING_ODD = 100130
  GLU_TESS_WINDING_NONZERO = 100131
  GLU_TESS_WINDING_POSITIVE = 100132
  GLU_TESS_WINDING_NEGATIVE = 100133
  GLU_TESS_WINDING_ABS_GEQ_TWO = 100134
  GLU_TESS_MAX_COORD = 1.0e150
  callback(:_GLUfuncptr, [  ], :void)
  callback(:_GLUfuncptr_tess, [:pointer, :pointer, :pointer, :pointer], :void)
  attach_function :gluBeginCurve, [ :pointer ], :void
  attach_function :gluBeginPolygon, [ :pointer ], :void
  attach_function :gluBeginSurface, [ :pointer ], :void
  attach_function :gluBeginTrim, [ :pointer ], :void
  attach_function :gluBuild1DMipmapLevels, [ :uint, :int, :int, :uint, :uint, :int, :int, :int, :pointer ], :int
  attach_function :gluBuild1DMipmaps, [ :uint, :int, :int, :uint, :uint, :pointer ], :int
  attach_function :gluBuild2DMipmapLevels, [ :uint, :int, :int, :int, :uint, :uint, :int, :int, :int, :pointer ], :int
  attach_function :gluBuild2DMipmaps, [ :uint, :int, :int, :int, :uint, :uint, :pointer ], :int
  attach_function :gluBuild3DMipmapLevels, [ :uint, :int, :int, :int, :int, :uint, :uint, :int, :int, :int, :pointer ], :int
  attach_function :gluBuild3DMipmaps, [ :uint, :int, :int, :int, :int, :uint, :uint, :pointer ], :int
  attach_function :gluCheckExtension, [ :pointer, :pointer ], :uchar
  attach_function :gluCylinder, [ :pointer, :double, :double, :double, :int, :int ], :void
  attach_function :gluDeleteNurbsRenderer, [ :pointer ], :void
  attach_function :gluDeleteQuadric, [ :pointer ], :void
  attach_function :gluDeleteTess, [ :pointer ], :void
  attach_function :gluDisk, [ :pointer, :double, :double, :int, :int ], :void
  attach_function :gluEndCurve, [ :pointer ], :void
  attach_function :gluEndPolygon, [ :pointer ], :void
  attach_function :gluEndSurface, [ :pointer ], :void
  attach_function :gluEndTrim, [ :pointer ], :void
  attach_function :gluErrorString, [ :uint ], :pointer
  attach_function :gluGetNurbsProperty, [ :pointer, :uint, :pointer ], :void
  attach_function :gluGetString, [ :uint ], :pointer
  attach_function :gluGetTessProperty, [ :pointer, :uint, :pointer ], :void
  attach_function :gluLoadSamplingMatrices, [ :pointer, :pointer, :pointer, :pointer ], :void
  attach_function :gluLookAt, [ :double, :double, :double, :double, :double, :double, :double, :double, :double ], :void
  attach_function :gluNewNurbsRenderer, [  ], :pointer
  attach_function :gluNewQuadric, [  ], :pointer
  attach_function :gluNewTess, [  ], :pointer
  attach_function :gluNextContour, [ :pointer, :uint ], :void
  attach_function :gluNurbsCallback, [ :pointer, :uint, :_GLUfuncptr ], :void
  attach_function :gluNurbsCallbackData, [ :pointer, :pointer ], :void
  attach_function :gluNurbsCallbackDataEXT, [ :pointer, :pointer ], :void
  attach_function :gluNurbsCurve, [ :pointer, :int, :pointer, :int, :pointer, :int, :uint ], :void
  attach_function :gluNurbsProperty, [ :pointer, :uint, :float ], :void
  attach_function :gluNurbsSurface, [ :pointer, :int, :pointer, :int, :pointer, :int, :int, :pointer, :int, :int, :uint ], :void
  attach_function :gluOrtho2D, [ :double, :double, :double, :double ], :void
  attach_function :gluPartialDisk, [ :pointer, :double, :double, :int, :int, :double, :double ], :void
  attach_function :gluPerspective, [ :double, :double, :double, :double ], :void
  attach_function :gluPickMatrix, [ :double, :double, :double, :double, :pointer ], :void
  attach_function :gluProject, [ :double, :double, :double, :pointer, :pointer, :pointer, :pointer, :pointer, :pointer ], :int
  attach_function :gluPwlCurve, [ :pointer, :int, :pointer, :int, :uint ], :void
  attach_function :gluQuadricCallback, [ :pointer, :uint, :_GLUfuncptr ], :void
  attach_function :gluQuadricDrawStyle, [ :pointer, :uint ], :void
  attach_function :gluQuadricNormals, [ :pointer, :uint ], :void
  attach_function :gluQuadricOrientation, [ :pointer, :uint ], :void
  attach_function :gluQuadricTexture, [ :pointer, :uchar ], :void
  attach_function :gluScaleImage, [ :uint, :int, :int, :uint, :pointer, :int, :int, :uint, :pointer ], :int
  attach_function :gluSphere, [ :pointer, :double, :int, :int ], :void
  attach_function :gluTessBeginContour, [ :pointer ], :void
  attach_function :gluTessBeginPolygon, [ :pointer, :pointer ], :void
  attach_function :gluTessCallback, [ :pointer, :uint, :_GLUfuncptr_tess ], :void
  attach_function :gluTessEndContour, [ :pointer ], :void
  attach_function :gluTessEndPolygon, [ :pointer ], :void
  attach_function :gluTessNormal, [ :pointer, :double, :double, :double ], :void
  attach_function :gluTessProperty, [ :pointer, :uint, :double ], :void
  attach_function :gluTessVertex, [ :pointer, :pointer, :pointer ], :void
  attach_function :gluUnProject, [ :double, :double, :double, :pointer, :pointer, :pointer, :pointer, :pointer, :pointer ], :int
  attach_function :gluUnProject4, [ :double, :double, :double, :double, :pointer, :pointer, :pointer, :double, :double, :pointer, :pointer, :pointer, :pointer ], :int

end
