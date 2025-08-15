file(GLOB_RECURSE [PROJECTNAMEREPLACEME]_OBJ_SOURCES "src/*.cc")
list(FILTER [PROJECTNAMEREPLACEME]_OBJ_SOURCES EXCLUDE REGEX ".*/main\\.cc$")
add_library(
	[PROJECTNAMEREPLACEME]_obj OBJECT
	${[PROJECTNAMEREPLACEME]_OBJ_SOURCES}
)
target_include_directories([PROJECTNAMEREPLACEME]_obj PRIVATE "./src/include")

# -- Create executable --
add_executable([PROJECTNAMEREPLACEME]_exe src/main.cc)
set_property(TARGET [PROJECTNAMEREPLACEME]_exe PROPERTY OUTPUT_NAME [PROJECTNAMEREPLACEME])
target_include_directories([PROJECTNAMEREPLACEME]_exe PRIVATE "./src/include")
target_compile_features([PROJECTNAMEREPLACEME]_exe PRIVATE cxx_std_${CMAKE_CXX_STANDARD})

# -- Link object library and dependencies --
target_link_libraries([PROJECTNAMEREPLACEME]_exe PRIVATE [PROJECTNAMEREPLACEME]_obj)

