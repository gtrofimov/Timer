cmake_minimum_required(VERSION 3.10)

project(Timer)

set(CMAKE_EXPORT_COMPILE_COMMANDS 1)

# if(CPPTEST_COVERAGE)
#  include(~/cpptest/professional/2024.2.0/cpptest/integration/cmake/cpptest-coverage.cmake)
# endif()


add_executable(timer
 clock.c
 driver.c
 timer.c
 stdinout.c)


# include(~/cpptest/professional/2024.2.0/cpptest/integration/cmake/cpptest-project.cmake)

#cpptest_add_executable(TimerTest 
#        CPPTEST_COMPILER_ID gcc_9-64
#        CPPTEST_PROJECT_NAME Timer
#        TARGETS timer
#)