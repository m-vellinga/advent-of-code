add_executable(day12_test
    day12.cpp
    day12_test.cpp
)

target_compile_definitions(day12_test PRIVATE
    PROJECT_SOURCE_DIR="${CMAKE_SOURCE_DIR}"
)

target_link_libraries(day12_test
    GTest::gtest_main
)

include(GoogleTest)
gtest_discover_tests(day12_test)
