if(EXISTS "/data/data/com.termux/files/home/oop_lab1/builder/runTests[1]_tests.cmake")
  include("/data/data/com.termux/files/home/oop_lab1/builder/runTests[1]_tests.cmake")
else()
  add_test(runTests_NOT_BUILT runTests_NOT_BUILT)
endif()
