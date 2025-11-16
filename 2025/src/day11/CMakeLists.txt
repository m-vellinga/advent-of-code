add_executable(day11_test
    day11.cpp
    day11_test.cpp
)

target_compile_definitions(day11_test PRIVATE
    PROJECT_SOURCE_DIR="${CMAKE_SOURCE_DIR}"
)

target_link_libraries(day11_test
    GTest::gtest_main
)

include(GoogleTest)
gtest_discover_tests(day11_test)
