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
CMAKE_SOURCE_DIR = /home/yaxiong/research/ngscope_related/srsRAN_4G-release_23_04

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yaxiong/research/ngscope_related/srsRAN_4G-release_23_04/build

# Include any dependencies generated for this target.
include lib/src/mac/CMakeFiles/srsran_mac.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include lib/src/mac/CMakeFiles/srsran_mac.dir/compiler_depend.make

# Include the progress variables for this target.
include lib/src/mac/CMakeFiles/srsran_mac.dir/progress.make

# Include the compile flags for this target's objects.
include lib/src/mac/CMakeFiles/srsran_mac.dir/flags.make

lib/src/mac/CMakeFiles/srsran_mac.dir/pdu.cc.o: lib/src/mac/CMakeFiles/srsran_mac.dir/flags.make
lib/src/mac/CMakeFiles/srsran_mac.dir/pdu.cc.o: ../lib/src/mac/pdu.cc
lib/src/mac/CMakeFiles/srsran_mac.dir/pdu.cc.o: lib/src/mac/CMakeFiles/srsran_mac.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yaxiong/research/ngscope_related/srsRAN_4G-release_23_04/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/src/mac/CMakeFiles/srsran_mac.dir/pdu.cc.o"
	cd /home/yaxiong/research/ngscope_related/srsRAN_4G-release_23_04/build/lib/src/mac && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/src/mac/CMakeFiles/srsran_mac.dir/pdu.cc.o -MF CMakeFiles/srsran_mac.dir/pdu.cc.o.d -o CMakeFiles/srsran_mac.dir/pdu.cc.o -c /home/yaxiong/research/ngscope_related/srsRAN_4G-release_23_04/lib/src/mac/pdu.cc

lib/src/mac/CMakeFiles/srsran_mac.dir/pdu.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/srsran_mac.dir/pdu.cc.i"
	cd /home/yaxiong/research/ngscope_related/srsRAN_4G-release_23_04/build/lib/src/mac && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yaxiong/research/ngscope_related/srsRAN_4G-release_23_04/lib/src/mac/pdu.cc > CMakeFiles/srsran_mac.dir/pdu.cc.i

lib/src/mac/CMakeFiles/srsran_mac.dir/pdu.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/srsran_mac.dir/pdu.cc.s"
	cd /home/yaxiong/research/ngscope_related/srsRAN_4G-release_23_04/build/lib/src/mac && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yaxiong/research/ngscope_related/srsRAN_4G-release_23_04/lib/src/mac/pdu.cc -o CMakeFiles/srsran_mac.dir/pdu.cc.s

lib/src/mac/CMakeFiles/srsran_mac.dir/pdu_queue.cc.o: lib/src/mac/CMakeFiles/srsran_mac.dir/flags.make
lib/src/mac/CMakeFiles/srsran_mac.dir/pdu_queue.cc.o: ../lib/src/mac/pdu_queue.cc
lib/src/mac/CMakeFiles/srsran_mac.dir/pdu_queue.cc.o: lib/src/mac/CMakeFiles/srsran_mac.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yaxiong/research/ngscope_related/srsRAN_4G-release_23_04/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object lib/src/mac/CMakeFiles/srsran_mac.dir/pdu_queue.cc.o"
	cd /home/yaxiong/research/ngscope_related/srsRAN_4G-release_23_04/build/lib/src/mac && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/src/mac/CMakeFiles/srsran_mac.dir/pdu_queue.cc.o -MF CMakeFiles/srsran_mac.dir/pdu_queue.cc.o.d -o CMakeFiles/srsran_mac.dir/pdu_queue.cc.o -c /home/yaxiong/research/ngscope_related/srsRAN_4G-release_23_04/lib/src/mac/pdu_queue.cc

lib/src/mac/CMakeFiles/srsran_mac.dir/pdu_queue.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/srsran_mac.dir/pdu_queue.cc.i"
	cd /home/yaxiong/research/ngscope_related/srsRAN_4G-release_23_04/build/lib/src/mac && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yaxiong/research/ngscope_related/srsRAN_4G-release_23_04/lib/src/mac/pdu_queue.cc > CMakeFiles/srsran_mac.dir/pdu_queue.cc.i

lib/src/mac/CMakeFiles/srsran_mac.dir/pdu_queue.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/srsran_mac.dir/pdu_queue.cc.s"
	cd /home/yaxiong/research/ngscope_related/srsRAN_4G-release_23_04/build/lib/src/mac && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yaxiong/research/ngscope_related/srsRAN_4G-release_23_04/lib/src/mac/pdu_queue.cc -o CMakeFiles/srsran_mac.dir/pdu_queue.cc.s

lib/src/mac/CMakeFiles/srsran_mac.dir/mac_sch_pdu_nr.cc.o: lib/src/mac/CMakeFiles/srsran_mac.dir/flags.make
lib/src/mac/CMakeFiles/srsran_mac.dir/mac_sch_pdu_nr.cc.o: ../lib/src/mac/mac_sch_pdu_nr.cc
lib/src/mac/CMakeFiles/srsran_mac.dir/mac_sch_pdu_nr.cc.o: lib/src/mac/CMakeFiles/srsran_mac.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yaxiong/research/ngscope_related/srsRAN_4G-release_23_04/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object lib/src/mac/CMakeFiles/srsran_mac.dir/mac_sch_pdu_nr.cc.o"
	cd /home/yaxiong/research/ngscope_related/srsRAN_4G-release_23_04/build/lib/src/mac && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/src/mac/CMakeFiles/srsran_mac.dir/mac_sch_pdu_nr.cc.o -MF CMakeFiles/srsran_mac.dir/mac_sch_pdu_nr.cc.o.d -o CMakeFiles/srsran_mac.dir/mac_sch_pdu_nr.cc.o -c /home/yaxiong/research/ngscope_related/srsRAN_4G-release_23_04/lib/src/mac/mac_sch_pdu_nr.cc

lib/src/mac/CMakeFiles/srsran_mac.dir/mac_sch_pdu_nr.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/srsran_mac.dir/mac_sch_pdu_nr.cc.i"
	cd /home/yaxiong/research/ngscope_related/srsRAN_4G-release_23_04/build/lib/src/mac && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yaxiong/research/ngscope_related/srsRAN_4G-release_23_04/lib/src/mac/mac_sch_pdu_nr.cc > CMakeFiles/srsran_mac.dir/mac_sch_pdu_nr.cc.i

lib/src/mac/CMakeFiles/srsran_mac.dir/mac_sch_pdu_nr.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/srsran_mac.dir/mac_sch_pdu_nr.cc.s"
	cd /home/yaxiong/research/ngscope_related/srsRAN_4G-release_23_04/build/lib/src/mac && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yaxiong/research/ngscope_related/srsRAN_4G-release_23_04/lib/src/mac/mac_sch_pdu_nr.cc -o CMakeFiles/srsran_mac.dir/mac_sch_pdu_nr.cc.s

lib/src/mac/CMakeFiles/srsran_mac.dir/mac_rar_pdu_nr.cc.o: lib/src/mac/CMakeFiles/srsran_mac.dir/flags.make
lib/src/mac/CMakeFiles/srsran_mac.dir/mac_rar_pdu_nr.cc.o: ../lib/src/mac/mac_rar_pdu_nr.cc
lib/src/mac/CMakeFiles/srsran_mac.dir/mac_rar_pdu_nr.cc.o: lib/src/mac/CMakeFiles/srsran_mac.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yaxiong/research/ngscope_related/srsRAN_4G-release_23_04/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object lib/src/mac/CMakeFiles/srsran_mac.dir/mac_rar_pdu_nr.cc.o"
	cd /home/yaxiong/research/ngscope_related/srsRAN_4G-release_23_04/build/lib/src/mac && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/src/mac/CMakeFiles/srsran_mac.dir/mac_rar_pdu_nr.cc.o -MF CMakeFiles/srsran_mac.dir/mac_rar_pdu_nr.cc.o.d -o CMakeFiles/srsran_mac.dir/mac_rar_pdu_nr.cc.o -c /home/yaxiong/research/ngscope_related/srsRAN_4G-release_23_04/lib/src/mac/mac_rar_pdu_nr.cc

lib/src/mac/CMakeFiles/srsran_mac.dir/mac_rar_pdu_nr.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/srsran_mac.dir/mac_rar_pdu_nr.cc.i"
	cd /home/yaxiong/research/ngscope_related/srsRAN_4G-release_23_04/build/lib/src/mac && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yaxiong/research/ngscope_related/srsRAN_4G-release_23_04/lib/src/mac/mac_rar_pdu_nr.cc > CMakeFiles/srsran_mac.dir/mac_rar_pdu_nr.cc.i

lib/src/mac/CMakeFiles/srsran_mac.dir/mac_rar_pdu_nr.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/srsran_mac.dir/mac_rar_pdu_nr.cc.s"
	cd /home/yaxiong/research/ngscope_related/srsRAN_4G-release_23_04/build/lib/src/mac && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yaxiong/research/ngscope_related/srsRAN_4G-release_23_04/lib/src/mac/mac_rar_pdu_nr.cc -o CMakeFiles/srsran_mac.dir/mac_rar_pdu_nr.cc.s

# Object files for target srsran_mac
srsran_mac_OBJECTS = \
"CMakeFiles/srsran_mac.dir/pdu.cc.o" \
"CMakeFiles/srsran_mac.dir/pdu_queue.cc.o" \
"CMakeFiles/srsran_mac.dir/mac_sch_pdu_nr.cc.o" \
"CMakeFiles/srsran_mac.dir/mac_rar_pdu_nr.cc.o"

# External object files for target srsran_mac
srsran_mac_EXTERNAL_OBJECTS =

lib/src/mac/libsrsran_mac.a: lib/src/mac/CMakeFiles/srsran_mac.dir/pdu.cc.o
lib/src/mac/libsrsran_mac.a: lib/src/mac/CMakeFiles/srsran_mac.dir/pdu_queue.cc.o
lib/src/mac/libsrsran_mac.a: lib/src/mac/CMakeFiles/srsran_mac.dir/mac_sch_pdu_nr.cc.o
lib/src/mac/libsrsran_mac.a: lib/src/mac/CMakeFiles/srsran_mac.dir/mac_rar_pdu_nr.cc.o
lib/src/mac/libsrsran_mac.a: lib/src/mac/CMakeFiles/srsran_mac.dir/build.make
lib/src/mac/libsrsran_mac.a: lib/src/mac/CMakeFiles/srsran_mac.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yaxiong/research/ngscope_related/srsRAN_4G-release_23_04/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX static library libsrsran_mac.a"
	cd /home/yaxiong/research/ngscope_related/srsRAN_4G-release_23_04/build/lib/src/mac && $(CMAKE_COMMAND) -P CMakeFiles/srsran_mac.dir/cmake_clean_target.cmake
	cd /home/yaxiong/research/ngscope_related/srsRAN_4G-release_23_04/build/lib/src/mac && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/srsran_mac.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/src/mac/CMakeFiles/srsran_mac.dir/build: lib/src/mac/libsrsran_mac.a
.PHONY : lib/src/mac/CMakeFiles/srsran_mac.dir/build

lib/src/mac/CMakeFiles/srsran_mac.dir/clean:
	cd /home/yaxiong/research/ngscope_related/srsRAN_4G-release_23_04/build/lib/src/mac && $(CMAKE_COMMAND) -P CMakeFiles/srsran_mac.dir/cmake_clean.cmake
.PHONY : lib/src/mac/CMakeFiles/srsran_mac.dir/clean

lib/src/mac/CMakeFiles/srsran_mac.dir/depend:
	cd /home/yaxiong/research/ngscope_related/srsRAN_4G-release_23_04/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yaxiong/research/ngscope_related/srsRAN_4G-release_23_04 /home/yaxiong/research/ngscope_related/srsRAN_4G-release_23_04/lib/src/mac /home/yaxiong/research/ngscope_related/srsRAN_4G-release_23_04/build /home/yaxiong/research/ngscope_related/srsRAN_4G-release_23_04/build/lib/src/mac /home/yaxiong/research/ngscope_related/srsRAN_4G-release_23_04/build/lib/src/mac/CMakeFiles/srsran_mac.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/src/mac/CMakeFiles/srsran_mac.dir/depend
