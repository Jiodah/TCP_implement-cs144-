# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/whale/MyProject/TCP_implement

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/whale/MyProject/TCP_implement/build

# Utility rule file for tidy_quiet_apps__tcp_native.cc.

# Include any custom commands dependencies for this target.
include CMakeFiles/tidy_quiet_apps__tcp_native.cc.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/tidy_quiet_apps__tcp_native.cc.dir/progress.make

CMakeFiles/tidy_quiet_apps__tcp_native.cc:
	clang-tidy -checks='*,-fuchsia-*,-hicpp-signed-bitwise,-google-build-using-namespace,-android*,-cppcoreguidelines-pro-bounds-pointer-arithmetic,-google-runtime-references,-readability-avoid-const-params-in-decls,-llvm-header-guard' -header-filter=.* -p=/home/whale/MyProject/TCP_implement/build /home/whale/MyProject/TCP_implement/apps/tcp_native.cc 2>/dev/null

tidy_quiet_apps__tcp_native.cc: CMakeFiles/tidy_quiet_apps__tcp_native.cc
tidy_quiet_apps__tcp_native.cc: CMakeFiles/tidy_quiet_apps__tcp_native.cc.dir/build.make
.PHONY : tidy_quiet_apps__tcp_native.cc

# Rule to build all files generated by this target.
CMakeFiles/tidy_quiet_apps__tcp_native.cc.dir/build: tidy_quiet_apps__tcp_native.cc
.PHONY : CMakeFiles/tidy_quiet_apps__tcp_native.cc.dir/build

CMakeFiles/tidy_quiet_apps__tcp_native.cc.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tidy_quiet_apps__tcp_native.cc.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tidy_quiet_apps__tcp_native.cc.dir/clean

CMakeFiles/tidy_quiet_apps__tcp_native.cc.dir/depend:
	cd /home/whale/MyProject/TCP_implement/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/whale/MyProject/TCP_implement /home/whale/MyProject/TCP_implement /home/whale/MyProject/TCP_implement/build /home/whale/MyProject/TCP_implement/build /home/whale/MyProject/TCP_implement/build/CMakeFiles/tidy_quiet_apps__tcp_native.cc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tidy_quiet_apps__tcp_native.cc.dir/depend

