add_executable(day10_test
    day10.cpp
    day10_test.cpp
)

target_compile_definitions(day10_test PRIVATE
    PROJECT_SOURCE_DIR="${CMAKE_SOURCE_DIR}"
)

target_link_libraries(day10_test
    GTest::gtest_main
)

include(GoogleTest)
gtest_discover_tests(day10_test)
