# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = "C:/Program Files/CMake/bin/cmake.exe"

# The command to remove a file.
RM = "C:/Program Files/CMake/bin/cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:/Exercism/cpp/reverse-string

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:/Exercism/cpp/reverse-string

# Include any dependencies generated for this target.
include CMakeFiles/reverse-string.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/reverse-string.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/reverse-string.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/reverse-string.dir/flags.make

CMakeFiles/reverse-string.dir/reverse_string_test.cpp.obj: CMakeFiles/reverse-string.dir/flags.make
CMakeFiles/reverse-string.dir/reverse_string_test.cpp.obj: reverse_string_test.cpp
CMakeFiles/reverse-string.dir/reverse_string_test.cpp.obj: CMakeFiles/reverse-string.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Exercism/cpp/reverse-string/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/reverse-string.dir/reverse_string_test.cpp.obj"
	C:/Users/jeluk/scoop/apps/gcc/current/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/reverse-string.dir/reverse_string_test.cpp.obj -MF CMakeFiles/reverse-string.dir/reverse_string_test.cpp.obj.d -o CMakeFiles/reverse-string.dir/reverse_string_test.cpp.obj -c C:/Exercism/cpp/reverse-string/reverse_string_test.cpp

CMakeFiles/reverse-string.dir/reverse_string_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/reverse-string.dir/reverse_string_test.cpp.i"
	C:/Users/jeluk/scoop/apps/gcc/current/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:/Exercism/cpp/reverse-string/reverse_string_test.cpp > CMakeFiles/reverse-string.dir/reverse_string_test.cpp.i

CMakeFiles/reverse-string.dir/reverse_string_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/reverse-string.dir/reverse_string_test.cpp.s"
	C:/Users/jeluk/scoop/apps/gcc/current/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:/Exercism/cpp/reverse-string/reverse_string_test.cpp -o CMakeFiles/reverse-string.dir/reverse_string_test.cpp.s

CMakeFiles/reverse-string.dir/reverse_string.cpp.obj: CMakeFiles/reverse-string.dir/flags.make
CMakeFiles/reverse-string.dir/reverse_string.cpp.obj: reverse_string.cpp
CMakeFiles/reverse-string.dir/reverse_string.cpp.obj: CMakeFiles/reverse-string.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Exercism/cpp/reverse-string/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/reverse-string.dir/reverse_string.cpp.obj"
	C:/Users/jeluk/scoop/apps/gcc/current/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/reverse-string.dir/reverse_string.cpp.obj -MF CMakeFiles/reverse-string.dir/reverse_string.cpp.obj.d -o CMakeFiles/reverse-string.dir/reverse_string.cpp.obj -c C:/Exercism/cpp/reverse-string/reverse_string.cpp

CMakeFiles/reverse-string.dir/reverse_string.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/reverse-string.dir/reverse_string.cpp.i"
	C:/Users/jeluk/scoop/apps/gcc/current/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:/Exercism/cpp/reverse-string/reverse_string.cpp > CMakeFiles/reverse-string.dir/reverse_string.cpp.i

CMakeFiles/reverse-string.dir/reverse_string.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/reverse-string.dir/reverse_string.cpp.s"
	C:/Users/jeluk/scoop/apps/gcc/current/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:/Exercism/cpp/reverse-string/reverse_string.cpp -o CMakeFiles/reverse-string.dir/reverse_string.cpp.s

CMakeFiles/reverse-string.dir/test/tests-main.cpp.obj: CMakeFiles/reverse-string.dir/flags.make
CMakeFiles/reverse-string.dir/test/tests-main.cpp.obj: test/tests-main.cpp
CMakeFiles/reverse-string.dir/test/tests-main.cpp.obj: CMakeFiles/reverse-string.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Exercism/cpp/reverse-string/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/reverse-string.dir/test/tests-main.cpp.obj"
	C:/Users/jeluk/scoop/apps/gcc/current/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/reverse-string.dir/test/tests-main.cpp.obj -MF CMakeFiles/reverse-string.dir/test/tests-main.cpp.obj.d -o CMakeFiles/reverse-string.dir/test/tests-main.cpp.obj -c C:/Exercism/cpp/reverse-string/test/tests-main.cpp

CMakeFiles/reverse-string.dir/test/tests-main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/reverse-string.dir/test/tests-main.cpp.i"
	C:/Users/jeluk/scoop/apps/gcc/current/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:/Exercism/cpp/reverse-string/test/tests-main.cpp > CMakeFiles/reverse-string.dir/test/tests-main.cpp.i

CMakeFiles/reverse-string.dir/test/tests-main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/reverse-string.dir/test/tests-main.cpp.s"
	C:/Users/jeluk/scoop/apps/gcc/current/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:/Exercism/cpp/reverse-string/test/tests-main.cpp -o CMakeFiles/reverse-string.dir/test/tests-main.cpp.s

# Object files for target reverse-string
reverse__string_OBJECTS = \
"CMakeFiles/reverse-string.dir/reverse_string_test.cpp.obj" \
"CMakeFiles/reverse-string.dir/reverse_string.cpp.obj" \
"CMakeFiles/reverse-string.dir/test/tests-main.cpp.obj"

# External object files for target reverse-string
reverse__string_EXTERNAL_OBJECTS =

reverse-string.exe: CMakeFiles/reverse-string.dir/reverse_string_test.cpp.obj
reverse-string.exe: CMakeFiles/reverse-string.dir/reverse_string.cpp.obj
reverse-string.exe: CMakeFiles/reverse-string.dir/test/tests-main.cpp.obj
reverse-string.exe: CMakeFiles/reverse-string.dir/build.make
reverse-string.exe: CMakeFiles/reverse-string.dir/linkLibs.rsp
reverse-string.exe: CMakeFiles/reverse-string.dir/objects1
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:/Exercism/cpp/reverse-string/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable reverse-string.exe"
	"C:/Program Files/CMake/bin/cmake.exe" -E rm -f CMakeFiles/reverse-string.dir/objects.a
	C:/Users/jeluk/scoop/apps/gcc/current/bin/ar.exe qc CMakeFiles/reverse-string.dir/objects.a @CMakeFiles/reverse-string.dir/objects1
	C:/Users/jeluk/scoop/apps/gcc/current/bin/c++.exe -g -Wl,--whole-archive CMakeFiles/reverse-string.dir/objects.a -Wl,--no-whole-archive -o reverse-string.exe -Wl,--out-implib,libreverse-string.dll.a -Wl,--major-image-version,0,--minor-image-version,0 @CMakeFiles/reverse-string.dir/linkLibs.rsp

# Rule to build all files generated by this target.
CMakeFiles/reverse-string.dir/build: reverse-string.exe
.PHONY : CMakeFiles/reverse-string.dir/build

CMakeFiles/reverse-string.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/reverse-string.dir/cmake_clean.cmake
.PHONY : CMakeFiles/reverse-string.dir/clean

CMakeFiles/reverse-string.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" C:/Exercism/cpp/reverse-string C:/Exercism/cpp/reverse-string C:/Exercism/cpp/reverse-string C:/Exercism/cpp/reverse-string C:/Exercism/cpp/reverse-string/CMakeFiles/reverse-string.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/reverse-string.dir/depend
