add_executable(day07_test
    day07.cpp
    day07_test.cpp
)

target_compile_definitions(day07_test PRIVATE
    PROJECT_SOURCE_DIR="${CMAKE_SOURCE_DIR}"
)

target_link_libraries(day07_test
    GTest::gtest_main
)

include(GoogleTest)
gtest_discover_tests(day07_test)
