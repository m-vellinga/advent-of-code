add_executable(day08_test
    day08.cpp
    day08_test.cpp
)

target_compile_definitions(day08_test PRIVATE
    PROJECT_SOURCE_DIR="${CMAKE_SOURCE_DIR}"
)

target_link_libraries(day08_test
    GTest::gtest_main
)

include(GoogleTest)
gtest_discover_tests(day08_test)
