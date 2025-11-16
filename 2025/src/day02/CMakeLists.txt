add_executable(day02_test
    day02.cpp
    day02_test.cpp
)

target_compile_definitions(day02_test PRIVATE
    PROJECT_SOURCE_DIR="${CMAKE_SOURCE_DIR}"
)

target_link_libraries(day02_test
    GTest::gtest_main
)

include(GoogleTest)
gtest_discover_tests(day02_test)
