add_executable(day01_test
    day01.cpp
    day01_test.cpp
)

target_compile_definitions(day01_test PRIVATE
    PROJECT_SOURCE_DIR="${CMAKE_SOURCE_DIR}"
)

target_link_libraries(day01_test
    GTest::gtest_main
)

include(GoogleTest)
gtest_discover_tests(day01_test)
