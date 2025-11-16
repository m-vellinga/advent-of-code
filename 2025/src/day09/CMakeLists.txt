add_executable(day09_test
    day09.cpp
    day09_test.cpp
)

target_compile_definitions(day09_test PRIVATE
    PROJECT_SOURCE_DIR="${CMAKE_SOURCE_DIR}"
)

target_link_libraries(day09_test
    GTest::gtest_main
)

include(GoogleTest)
gtest_discover_tests(day09_test)
