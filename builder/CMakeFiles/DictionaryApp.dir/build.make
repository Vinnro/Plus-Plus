# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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
SHELL = /data/data/com.termux/files/usr/bin/sh

# The CMake executable.
CMAKE_COMMAND = /data/data/com.termux/files/usr/bin/cmake

# The command to remove a file.
RM = /data/data/com.termux/files/usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /data/data/com.termux/files/home/one/Plus-Plus

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /data/data/com.termux/files/home/one/Plus-Plus/builder

# Include any dependencies generated for this target.
include CMakeFiles/DictionaryApp.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/DictionaryApp.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/DictionaryApp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/DictionaryApp.dir/flags.make

CMakeFiles/DictionaryApp.dir/src/main.cpp.o: CMakeFiles/DictionaryApp.dir/flags.make
CMakeFiles/DictionaryApp.dir/src/main.cpp.o: /data/data/com.termux/files/home/one/Plus-Plus/src/main.cpp
CMakeFiles/DictionaryApp.dir/src/main.cpp.o: CMakeFiles/DictionaryApp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/data/data/com.termux/files/home/one/Plus-Plus/builder/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/DictionaryApp.dir/src/main.cpp.o"
	/data/data/com.termux/files/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/DictionaryApp.dir/src/main.cpp.o -MF CMakeFiles/DictionaryApp.dir/src/main.cpp.o.d -o CMakeFiles/DictionaryApp.dir/src/main.cpp.o -c /data/data/com.termux/files/home/one/Plus-Plus/src/main.cpp

CMakeFiles/DictionaryApp.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/DictionaryApp.dir/src/main.cpp.i"
	/data/data/com.termux/files/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data/data/com.termux/files/home/one/Plus-Plus/src/main.cpp > CMakeFiles/DictionaryApp.dir/src/main.cpp.i

CMakeFiles/DictionaryApp.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/DictionaryApp.dir/src/main.cpp.s"
	/data/data/com.termux/files/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data/data/com.termux/files/home/one/Plus-Plus/src/main.cpp -o CMakeFiles/DictionaryApp.dir/src/main.cpp.s

CMakeFiles/DictionaryApp.dir/src/dictionary_record.cpp.o: CMakeFiles/DictionaryApp.dir/flags.make
CMakeFiles/DictionaryApp.dir/src/dictionary_record.cpp.o: /data/data/com.termux/files/home/one/Plus-Plus/src/dictionary_record.cpp
CMakeFiles/DictionaryApp.dir/src/dictionary_record.cpp.o: CMakeFiles/DictionaryApp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/data/data/com.termux/files/home/one/Plus-Plus/builder/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/DictionaryApp.dir/src/dictionary_record.cpp.o"
	/data/data/com.termux/files/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/DictionaryApp.dir/src/dictionary_record.cpp.o -MF CMakeFiles/DictionaryApp.dir/src/dictionary_record.cpp.o.d -o CMakeFiles/DictionaryApp.dir/src/dictionary_record.cpp.o -c /data/data/com.termux/files/home/one/Plus-Plus/src/dictionary_record.cpp

CMakeFiles/DictionaryApp.dir/src/dictionary_record.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/DictionaryApp.dir/src/dictionary_record.cpp.i"
	/data/data/com.termux/files/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data/data/com.termux/files/home/one/Plus-Plus/src/dictionary_record.cpp > CMakeFiles/DictionaryApp.dir/src/dictionary_record.cpp.i

CMakeFiles/DictionaryApp.dir/src/dictionary_record.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/DictionaryApp.dir/src/dictionary_record.cpp.s"
	/data/data/com.termux/files/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data/data/com.termux/files/home/one/Plus-Plus/src/dictionary_record.cpp -o CMakeFiles/DictionaryApp.dir/src/dictionary_record.cpp.s

CMakeFiles/DictionaryApp.dir/src/xml_converter.cpp.o: CMakeFiles/DictionaryApp.dir/flags.make
CMakeFiles/DictionaryApp.dir/src/xml_converter.cpp.o: /data/data/com.termux/files/home/one/Plus-Plus/src/xml_converter.cpp
CMakeFiles/DictionaryApp.dir/src/xml_converter.cpp.o: CMakeFiles/DictionaryApp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/data/data/com.termux/files/home/one/Plus-Plus/builder/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/DictionaryApp.dir/src/xml_converter.cpp.o"
	/data/data/com.termux/files/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/DictionaryApp.dir/src/xml_converter.cpp.o -MF CMakeFiles/DictionaryApp.dir/src/xml_converter.cpp.o.d -o CMakeFiles/DictionaryApp.dir/src/xml_converter.cpp.o -c /data/data/com.termux/files/home/one/Plus-Plus/src/xml_converter.cpp

CMakeFiles/DictionaryApp.dir/src/xml_converter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/DictionaryApp.dir/src/xml_converter.cpp.i"
	/data/data/com.termux/files/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data/data/com.termux/files/home/one/Plus-Plus/src/xml_converter.cpp > CMakeFiles/DictionaryApp.dir/src/xml_converter.cpp.i

CMakeFiles/DictionaryApp.dir/src/xml_converter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/DictionaryApp.dir/src/xml_converter.cpp.s"
	/data/data/com.termux/files/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data/data/com.termux/files/home/one/Plus-Plus/src/xml_converter.cpp -o CMakeFiles/DictionaryApp.dir/src/xml_converter.cpp.s

CMakeFiles/DictionaryApp.dir/src/menu.cpp.o: CMakeFiles/DictionaryApp.dir/flags.make
CMakeFiles/DictionaryApp.dir/src/menu.cpp.o: /data/data/com.termux/files/home/one/Plus-Plus/src/menu.cpp
CMakeFiles/DictionaryApp.dir/src/menu.cpp.o: CMakeFiles/DictionaryApp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/data/data/com.termux/files/home/one/Plus-Plus/builder/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/DictionaryApp.dir/src/menu.cpp.o"
	/data/data/com.termux/files/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/DictionaryApp.dir/src/menu.cpp.o -MF CMakeFiles/DictionaryApp.dir/src/menu.cpp.o.d -o CMakeFiles/DictionaryApp.dir/src/menu.cpp.o -c /data/data/com.termux/files/home/one/Plus-Plus/src/menu.cpp

CMakeFiles/DictionaryApp.dir/src/menu.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/DictionaryApp.dir/src/menu.cpp.i"
	/data/data/com.termux/files/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data/data/com.termux/files/home/one/Plus-Plus/src/menu.cpp > CMakeFiles/DictionaryApp.dir/src/menu.cpp.i

CMakeFiles/DictionaryApp.dir/src/menu.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/DictionaryApp.dir/src/menu.cpp.s"
	/data/data/com.termux/files/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data/data/com.termux/files/home/one/Plus-Plus/src/menu.cpp -o CMakeFiles/DictionaryApp.dir/src/menu.cpp.s

# Object files for target DictionaryApp
DictionaryApp_OBJECTS = \
"CMakeFiles/DictionaryApp.dir/src/main.cpp.o" \
"CMakeFiles/DictionaryApp.dir/src/dictionary_record.cpp.o" \
"CMakeFiles/DictionaryApp.dir/src/xml_converter.cpp.o" \
"CMakeFiles/DictionaryApp.dir/src/menu.cpp.o"

# External object files for target DictionaryApp
DictionaryApp_EXTERNAL_OBJECTS =

DictionaryApp: CMakeFiles/DictionaryApp.dir/src/main.cpp.o
DictionaryApp: CMakeFiles/DictionaryApp.dir/src/dictionary_record.cpp.o
DictionaryApp: CMakeFiles/DictionaryApp.dir/src/xml_converter.cpp.o
DictionaryApp: CMakeFiles/DictionaryApp.dir/src/menu.cpp.o
DictionaryApp: CMakeFiles/DictionaryApp.dir/build.make
DictionaryApp: CMakeFiles/DictionaryApp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/data/data/com.termux/files/home/one/Plus-Plus/builder/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable DictionaryApp"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/DictionaryApp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/DictionaryApp.dir/build: DictionaryApp
.PHONY : CMakeFiles/DictionaryApp.dir/build

CMakeFiles/DictionaryApp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/DictionaryApp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/DictionaryApp.dir/clean

CMakeFiles/DictionaryApp.dir/depend:
	cd /data/data/com.termux/files/home/one/Plus-Plus/builder && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /data/data/com.termux/files/home/one/Plus-Plus /data/data/com.termux/files/home/one/Plus-Plus /data/data/com.termux/files/home/one/Plus-Plus/builder /data/data/com.termux/files/home/one/Plus-Plus/builder /data/data/com.termux/files/home/one/Plus-Plus/builder/CMakeFiles/DictionaryApp.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/DictionaryApp.dir/depend

