add_executable(day06_test
    day06.cpp
    day06_test.cpp
)

target_compile_definitions(day06_test PRIVATE
    PROJECT_SOURCE_DIR="${CMAKE_SOURCE_DIR}"
)

target_link_libraries(day06_test
    GTest::gtest_main
)

include(GoogleTest)
gtest_discover_tests(day06_test)
