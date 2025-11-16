add_executable(day03_test
    day03.cpp
    day03_test.cpp
)

target_compile_definitions(day03_test PRIVATE
    PROJECT_SOURCE_DIR="${CMAKE_SOURCE_DIR}"
)

target_link_libraries(day03_test
    GTest::gtest_main
)

include(GoogleTest)
gtest_discover_tests(day03_test)
