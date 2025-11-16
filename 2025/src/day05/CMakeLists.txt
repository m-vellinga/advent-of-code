add_executable(day05_test
    day05.cpp
    day05_test.cpp
)

target_compile_definitions(day05_test PRIVATE
    PROJECT_SOURCE_DIR="${CMAKE_SOURCE_DIR}"
)

target_link_libraries(day05_test
    GTest::gtest_main
)

include(GoogleTest)
gtest_discover_tests(day05_test)
