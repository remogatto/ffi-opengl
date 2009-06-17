
module GLUT
  extend FFI::Library
  FREEGLUT = 1
  GLUT_API_VERSION = 4
  FREEGLUT_VERSION_2_0 = 1
  GLUT_XLIB_IMPLEMENTATION = 13
  GLUT_KEY_F1 = 0x0001
  GLUT_KEY_F2 = 0x0002
  GLUT_KEY_F3 = 0x0003
  GLUT_KEY_F4 = 0x0004
  GLUT_KEY_F5 = 0x0005
  GLUT_KEY_F6 = 0x0006
  GLUT_KEY_F7 = 0x0007
  GLUT_KEY_F8 = 0x0008
  GLUT_KEY_F9 = 0x0009
  GLUT_KEY_F10 = 0x000A
  GLUT_KEY_F11 = 0x000B
  GLUT_KEY_F12 = 0x000C
  GLUT_KEY_LEFT = 0x0064
  GLUT_KEY_UP = 0x0065
  GLUT_KEY_RIGHT = 0x0066
  GLUT_KEY_DOWN = 0x0067
  GLUT_KEY_PAGE_UP = 0x0068
  GLUT_KEY_PAGE_DOWN = 0x0069
  GLUT_KEY_HOME = 0x006A
  GLUT_KEY_END = 0x006B
  GLUT_KEY_INSERT = 0x006C
  GLUT_LEFT_BUTTON = 0x0000
  GLUT_MIDDLE_BUTTON = 0x0001
  GLUT_RIGHT_BUTTON = 0x0002
  GLUT_DOWN = 0x0000
  GLUT_UP = 0x0001
  GLUT_LEFT = 0x0000
  GLUT_ENTERED = 0x0001
  GLUT_RGB = 0x0000
  GLUT_RGBA = 0x0000
  GLUT_INDEX = 0x0001
  GLUT_SINGLE = 0x0000
  GLUT_DOUBLE = 0x0002
  GLUT_ACCUM = 0x0004
  GLUT_ALPHA = 0x0008
  GLUT_DEPTH = 0x0010
  GLUT_STENCIL = 0x0020
  GLUT_MULTISAMPLE = 0x0080
  GLUT_STEREO = 0x0100
  GLUT_LUMINANCE = 0x0200
  GLUT_MENU_NOT_IN_USE = 0x0000
  GLUT_MENU_IN_USE = 0x0001
  GLUT_NOT_VISIBLE = 0x0000
  GLUT_VISIBLE = 0x0001
  GLUT_HIDDEN = 0x0000
  GLUT_FULLY_RETAINED = 0x0001
  GLUT_PARTIALLY_RETAINED = 0x0002
  GLUT_FULLY_COVERED = 0x0003
  GLUT_WINDOW_X = 0x0064
  GLUT_WINDOW_Y = 0x0065
  GLUT_WINDOW_WIDTH = 0x0066
  GLUT_WINDOW_HEIGHT = 0x0067
  GLUT_WINDOW_BUFFER_SIZE = 0x0068
  GLUT_WINDOW_STENCIL_SIZE = 0x0069
  GLUT_WINDOW_DEPTH_SIZE = 0x006A
  GLUT_WINDOW_RED_SIZE = 0x006B
  GLUT_WINDOW_GREEN_SIZE = 0x006C
  GLUT_WINDOW_BLUE_SIZE = 0x006D
  GLUT_WINDOW_ALPHA_SIZE = 0x006E
  GLUT_WINDOW_ACCUM_RED_SIZE = 0x006F
  GLUT_WINDOW_ACCUM_GREEN_SIZE = 0x0070
  GLUT_WINDOW_ACCUM_BLUE_SIZE = 0x0071
  GLUT_WINDOW_ACCUM_ALPHA_SIZE = 0x0072
  GLUT_WINDOW_DOUBLEBUFFER = 0x0073
  GLUT_WINDOW_RGBA = 0x0074
  GLUT_WINDOW_PARENT = 0x0075
  GLUT_WINDOW_NUM_CHILDREN = 0x0076
  GLUT_WINDOW_COLORMAP_SIZE = 0x0077
  GLUT_WINDOW_NUM_SAMPLES = 0x0078
  GLUT_WINDOW_STEREO = 0x0079
  GLUT_WINDOW_CURSOR = 0x007A
  GLUT_SCREEN_WIDTH = 0x00C8
  GLUT_SCREEN_HEIGHT = 0x00C9
  GLUT_SCREEN_WIDTH_MM = 0x00CA
  GLUT_SCREEN_HEIGHT_MM = 0x00CB
  GLUT_MENU_NUM_ITEMS = 0x012C
  GLUT_DISPLAY_MODE_POSSIBLE = 0x0190
  GLUT_INIT_WINDOW_X = 0x01F4
  GLUT_INIT_WINDOW_Y = 0x01F5
  GLUT_INIT_WINDOW_WIDTH = 0x01F6
  GLUT_INIT_WINDOW_HEIGHT = 0x01F7
  GLUT_INIT_DISPLAY_MODE = 0x01F8
  GLUT_ELAPSED_TIME = 0x02BC
  GLUT_WINDOW_FORMAT_ID = 0x007B
  GLUT_INIT_STATE = 0x007C
  GLUT_HAS_KEYBOARD = 0x0258
  GLUT_HAS_MOUSE = 0x0259
  GLUT_HAS_SPACEBALL = 0x025A
  GLUT_HAS_DIAL_AND_BUTTON_BOX = 0x025B
  GLUT_HAS_TABLET = 0x025C
  GLUT_NUM_MOUSE_BUTTONS = 0x025D
  GLUT_NUM_SPACEBALL_BUTTONS = 0x025E
  GLUT_NUM_BUTTON_BOX_BUTTONS = 0x025F
  GLUT_NUM_DIALS = 0x0260
  GLUT_NUM_TABLET_BUTTONS = 0x0261
  GLUT_DEVICE_IGNORE_KEY_REPEAT = 0x0262
  GLUT_DEVICE_KEY_REPEAT = 0x0263
  GLUT_HAS_JOYSTICK = 0x0264
  GLUT_OWNS_JOYSTICK = 0x0265
  GLUT_JOYSTICK_BUTTONS = 0x0266
  GLUT_JOYSTICK_AXES = 0x0267
  GLUT_JOYSTICK_POLL_RATE = 0x0268
  GLUT_OVERLAY_POSSIBLE = 0x0320
  GLUT_LAYER_IN_USE = 0x0321
  GLUT_HAS_OVERLAY = 0x0322
  GLUT_TRANSPARENT_INDEX = 0x0323
  GLUT_NORMAL_DAMAGED = 0x0324
  GLUT_OVERLAY_DAMAGED = 0x0325
  GLUT_VIDEO_RESIZE_POSSIBLE = 0x0384
  GLUT_VIDEO_RESIZE_IN_USE = 0x0385
  GLUT_VIDEO_RESIZE_X_DELTA = 0x0386
  GLUT_VIDEO_RESIZE_Y_DELTA = 0x0387
  GLUT_VIDEO_RESIZE_WIDTH_DELTA = 0x0388
  GLUT_VIDEO_RESIZE_HEIGHT_DELTA = 0x0389
  GLUT_VIDEO_RESIZE_X = 0x038A
  GLUT_VIDEO_RESIZE_Y = 0x038B
  GLUT_VIDEO_RESIZE_WIDTH = 0x038C
  GLUT_VIDEO_RESIZE_HEIGHT = 0x038D
  GLUT_NORMAL = 0x0000
  GLUT_OVERLAY = 0x0001
  GLUT_ACTIVE_SHIFT = 0x0001
  GLUT_ACTIVE_CTRL = 0x0002
  GLUT_ACTIVE_ALT = 0x0004
  GLUT_CURSOR_RIGHT_ARROW = 0x0000
  GLUT_CURSOR_LEFT_ARROW = 0x0001
  GLUT_CURSOR_INFO = 0x0002
  GLUT_CURSOR_DESTROY = 0x0003
  GLUT_CURSOR_HELP = 0x0004
  GLUT_CURSOR_CYCLE = 0x0005
  GLUT_CURSOR_SPRAY = 0x0006
  GLUT_CURSOR_WAIT = 0x0007
  GLUT_CURSOR_TEXT = 0x0008
  GLUT_CURSOR_CROSSHAIR = 0x0009
  GLUT_CURSOR_UP_DOWN = 0x000A
  GLUT_CURSOR_LEFT_RIGHT = 0x000B
  GLUT_CURSOR_TOP_SIDE = 0x000C
  GLUT_CURSOR_BOTTOM_SIDE = 0x000D
  GLUT_CURSOR_LEFT_SIDE = 0x000E
  GLUT_CURSOR_RIGHT_SIDE = 0x000F
  GLUT_CURSOR_TOP_LEFT_CORNER = 0x0010
  GLUT_CURSOR_TOP_RIGHT_CORNER = 0x0011
  GLUT_CURSOR_BOTTOM_RIGHT_CORNER = 0x0012
  GLUT_CURSOR_BOTTOM_LEFT_CORNER = 0x0013
  GLUT_CURSOR_INHERIT = 0x0064
  GLUT_CURSOR_NONE = 0x0065
  GLUT_CURSOR_FULL_CROSSHAIR = 0x0066
  GLUT_RED = 0x0000
  GLUT_GREEN = 0x0001
  GLUT_BLUE = 0x0002
  GLUT_KEY_REPEAT_OFF = 0x0000
  GLUT_KEY_REPEAT_ON = 0x0001
  GLUT_KEY_REPEAT_DEFAULT = 0x0002
  GLUT_JOYSTICK_BUTTON_A = 0x0001
  GLUT_JOYSTICK_BUTTON_B = 0x0002
  GLUT_JOYSTICK_BUTTON_C = 0x0004
  GLUT_JOYSTICK_BUTTON_D = 0x0008
  GLUT_GAME_MODE_ACTIVE = 0x0000
  GLUT_GAME_MODE_POSSIBLE = 0x0001
  GLUT_GAME_MODE_WIDTH = 0x0002
  GLUT_GAME_MODE_HEIGHT = 0x0003
  GLUT_GAME_MODE_PIXEL_DEPTH = 0x0004
  GLUT_GAME_MODE_REFRESH_RATE = 0x0005
  GLUT_GAME_MODE_DISPLAY_CHANGED = 0x0006
  attach_function :glutInit, [ :pointer, :pointer ], :void
  attach_function :glutInitWindowPosition, [ :int, :int ], :void
  attach_function :glutInitWindowSize, [ :int, :int ], :void
  attach_function :glutInitDisplayMode, [ :uint ], :void
  attach_function :glutInitDisplayString, [ :string ], :void
  attach_function :glutMainLoop, [  ], :void
  attach_function :glutCreateWindow, [ :string ], :int
  attach_function :glutCreateSubWindow, [ :int, :int, :int, :int, :int ], :int
  attach_function :glutDestroyWindow, [ :int ], :void
  attach_function :glutSetWindow, [ :int ], :void
  attach_function :glutGetWindow, [  ], :int
  attach_function :glutSetWindowTitle, [ :string ], :void
  attach_function :glutSetIconTitle, [ :string ], :void
  attach_function :glutReshapeWindow, [ :int, :int ], :void
  attach_function :glutPositionWindow, [ :int, :int ], :void
  attach_function :glutShowWindow, [  ], :void
  attach_function :glutHideWindow, [  ], :void
  attach_function :glutIconifyWindow, [  ], :void
  attach_function :glutPushWindow, [  ], :void
  attach_function :glutPopWindow, [  ], :void
  attach_function :glutFullScreen, [  ], :void
  attach_function :glutPostWindowRedisplay, [ :int ], :void
  attach_function :glutPostRedisplay, [  ], :void
  attach_function :glutSwapBuffers, [  ], :void
  attach_function :glutWarpPointer, [ :int, :int ], :void
  attach_function :glutSetCursor, [ :int ], :void
  attach_function :glutEstablishOverlay, [  ], :void
  attach_function :glutRemoveOverlay, [  ], :void
  attach_function :glutUseLayer, [ :uint ], :void
  attach_function :glutPostOverlayRedisplay, [  ], :void
  attach_function :glutPostWindowOverlayRedisplay, [ :int ], :void
  attach_function :glutShowOverlay, [  ], :void
  attach_function :glutHideOverlay, [  ], :void
  attach_function :glutCreateMenu, [ callback([ :int ], :void) ], :int
  attach_function :glutDestroyMenu, [ :int ], :void
  attach_function :glutGetMenu, [  ], :int
  attach_function :glutSetMenu, [ :int ], :void
  attach_function :glutAddMenuEntry, [ :string, :int ], :void
  attach_function :glutAddSubMenu, [ :string, :int ], :void
  attach_function :glutChangeToMenuEntry, [ :int, :string, :int ], :void
  attach_function :glutChangeToSubMenu, [ :int, :string, :int ], :void
  attach_function :glutRemoveMenuItem, [ :int ], :void
  attach_function :glutAttachMenu, [ :int ], :void
  attach_function :glutDetachMenu, [ :int ], :void
  attach_function :glutTimerFunc, [ :uint, callback([ :int ], :void), :int ], :void
  attach_function :glutIdleFunc, [ callback([  ], :void) ], :void
  attach_function :glutKeyboardFunc, [ callback([ :uchar, :int, :int ], :void) ], :void
  attach_function :glutSpecialFunc, [ callback([ :int, :int, :int ], :void) ], :void
  attach_function :glutReshapeFunc, [ callback([ :int, :int ], :void) ], :void
  attach_function :glutVisibilityFunc, [ callback([ :int ], :void) ], :void
  attach_function :glutDisplayFunc, [ callback([  ], :void) ], :void
  attach_function :glutMouseFunc, [ callback([ :int, :int, :int, :int ], :void) ], :void
  attach_function :glutMotionFunc, [ callback([ :int, :int ], :void) ], :void
  attach_function :glutPassiveMotionFunc, [ callback([ :int, :int ], :void) ], :void
  attach_function :glutEntryFunc, [ callback([ :int ], :void) ], :void
  attach_function :glutKeyboardUpFunc, [ callback([ :uchar, :int, :int ], :void) ], :void
  attach_function :glutSpecialUpFunc, [ callback([ :int, :int, :int ], :void) ], :void
  attach_function :glutJoystickFunc, [ callback([ :uint, :int, :int, :int ], :void), :int ], :void
  attach_function :glutMenuStateFunc, [ callback([ :int ], :void) ], :void
  attach_function :glutMenuStatusFunc, [ callback([ :int, :int, :int ], :void) ], :void
  attach_function :glutOverlayDisplayFunc, [ callback([  ], :void) ], :void
  attach_function :glutWindowStatusFunc, [ callback([ :int ], :void) ], :void
  attach_function :glutSpaceballMotionFunc, [ callback([ :int, :int, :int ], :void) ], :void
  attach_function :glutSpaceballRotateFunc, [ callback([ :int, :int, :int ], :void) ], :void
  attach_function :glutSpaceballButtonFunc, [ callback([ :int, :int ], :void) ], :void
  attach_function :glutButtonBoxFunc, [ callback([ :int, :int ], :void) ], :void
  attach_function :glutDialsFunc, [ callback([ :int, :int ], :void) ], :void
  attach_function :glutTabletMotionFunc, [ callback([ :int, :int ], :void) ], :void
  attach_function :glutTabletButtonFunc, [ callback([ :int, :int, :int, :int ], :void) ], :void
  attach_function :glutGet, [ :uint ], :int
  attach_function :glutDeviceGet, [ :uint ], :int
  attach_function :glutGetModifiers, [  ], :int
  attach_function :glutLayerGet, [ :uint ], :int
  attach_function :glutBitmapCharacter, [ :pointer, :int ], :void
  attach_function :glutBitmapWidth, [ :pointer, :int ], :int
  attach_function :glutStrokeCharacter, [ :pointer, :int ], :void
  attach_function :glutStrokeWidth, [ :pointer, :int ], :int
  attach_function :glutBitmapLength, [ :pointer, :pointer ], :int
  attach_function :glutStrokeLength, [ :pointer, :pointer ], :int
  attach_function :glutWireCube, [ :double ], :void
  attach_function :glutSolidCube, [ :double ], :void
  attach_function :glutWireSphere, [ :double, :int, :int ], :void
  attach_function :glutSolidSphere, [ :double, :int, :int ], :void
  attach_function :glutWireCone, [ :double, :double, :int, :int ], :void
  attach_function :glutSolidCone, [ :double, :double, :int, :int ], :void
  attach_function :glutWireTorus, [ :double, :double, :int, :int ], :void
  attach_function :glutSolidTorus, [ :double, :double, :int, :int ], :void
  attach_function :glutWireDodecahedron, [  ], :void
  attach_function :glutSolidDodecahedron, [  ], :void
  attach_function :glutWireOctahedron, [  ], :void
  attach_function :glutSolidOctahedron, [  ], :void
  attach_function :glutWireTetrahedron, [  ], :void
  attach_function :glutSolidTetrahedron, [  ], :void
  attach_function :glutWireIcosahedron, [  ], :void
  attach_function :glutSolidIcosahedron, [  ], :void
  attach_function :glutWireTeapot, [ :double ], :void
  attach_function :glutSolidTeapot, [ :double ], :void
  attach_function :glutGameModeString, [ :string ], :void
  attach_function :glutEnterGameMode, [  ], :int
  attach_function :glutLeaveGameMode, [  ], :void
  attach_function :glutGameModeGet, [ :uint ], :int
  attach_function :glutVideoResizeGet, [ :uint ], :int
  attach_function :glutSetupVideoResizing, [  ], :void
  attach_function :glutStopVideoResizing, [  ], :void
  attach_function :glutVideoResize, [ :int, :int, :int, :int ], :void
  attach_function :glutVideoPan, [ :int, :int, :int, :int ], :void
  attach_function :glutSetColor, [ :int, :float, :float, :float ], :void
  attach_function :glutGetColor, [ :int, :int ], :float
  attach_function :glutCopyColormap, [ :int ], :void
  attach_function :glutIgnoreKeyRepeat, [ :int ], :void
  attach_function :glutSetKeyRepeat, [ :int ], :void
  attach_function :glutForceJoystickFunc, [  ], :void
  attach_function :glutExtensionSupported, [ :string ], :int
  attach_function :glutReportErrors, [  ], :void

end
