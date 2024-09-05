cmake_minimum_required(VERSION 3.10)

project(DictionaryProject)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

include_directories(include)

set(SOURCES
    src/main.cpp
    src/dictionary_record.cpp
    src/xml_converter.cpp
    src/menu.cpp
)

add_executable(DictionaryApp ${SOURCES})

include(FetchContent)
FetchContent_Declare(
  googletest
  URL https://github.com/google/googletest/archive/refs/tags/release-1.12.1.zip
)

set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)

FetchContent_MakeAvailable(googletest)

enable_testing()

option(CODE_COVERAGE "Enable coverage reporting" ON)

if(CODE_COVERAGE)
    if(CMAKE_CXX_COMPILER_ID MATCHES "GNU|Clang")
        if(CMAKE_CXX_COMPILER_ID MATCHES "GNU")
            set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O0 -g --coverage")
            set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} --coverage")
        elseif(CMAKE_CXX_COMPILER_ID MATCHES "Clang")
            set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O0 -g -fprofile-instr-generate -fcoverage-mapping")
            set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -fprofile-instr-generate -fcoverage-mapping")
        endif()
    endif()
endif()

set(TEST_SOURCES
    tests/test_main.cpp
    tests/test_dictionary_record.cpp
    tests/test_xml_converter.cpp
    src/dictionary_record.cpp
    src/xml_converter.cpp
)

add_executable(runTests ${TEST_SOURCES})

target_link_libraries(runTests gtest_main)

include(GoogleTest)
gtest_discover_tests(runTests)

if(CODE_COVERAGE)
    if(CMAKE_CXX_COMPILER_ID MATCHES "GNU")
        find_program(LCOV_PATH lcov)
        find_program(GENHTML_PATH genhtml)

        if(LCOV_PATH-NOTFOUND)
            message(FATAL_ERROR "lcov not found! Please install lcov.")
        endif()

        if(GENHTML_PATH-NOTFOUND)
            message(FATAL_ERROR "genhtml not found! Please install lcov.")
        endif()

        add_custom_target(coverage
            COMMAND ${LCOV_PATH} --capture --directory . --output-file coverage.info
            COMMAND ${LCOV_PATH} --remove coverage.info '/usr/*' '${CMAKE_SOURCE_DIR}/tests/*' --output-file coverage.info
            COMMAND ${GENHTML_PATH} coverage.info --output-directory coverage-report
            WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
            COMMENT "Generating code coverage report..."
        )
    elseif(CMAKE_CXX_COMPILER_ID MATCHES "Clang")
        find_program(LLVM_PROFDATA llvm-profdata)
        find_program(LLVM_COV llvm-cov)

        if(LLVM_PROFDATA-NOTFOUND)
            message(FATAL_ERROR "llvm-profdata not found! Please install llvm.")
        endif()

        if(LLVM_COV-NOTFOUND)
            message(FATAL_ERROR "llvm-cov not found! Please install llvm.")
        endif()

        add_custom_target(coverage
            COMMAND ${LLVM_PROFDATA} merge -sparse default.profraw -o default.profdata
            COMMAND ${LLVM_COV} show ./runTests -instr-profile=default.profdata -output-dir=coverage-report
            WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
            COMMENT "Generating code coverage report with llvm-cov..."
        )
    endif()
endif()
