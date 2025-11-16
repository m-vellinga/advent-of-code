add_executable(day04_test
    day04.cpp
    day04_test.cpp
)

target_compile_definitions(day04_test PRIVATE
    PROJECT_SOURCE_DIR="${CMAKE_SOURCE_DIR}"
)

target_link_libraries(day04_test
    GTest::gtest_main
)

include(GoogleTest)
gtest_discover_tests(day04_test)
