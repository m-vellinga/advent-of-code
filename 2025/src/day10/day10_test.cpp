#include "day10.h"

#include <gtest/gtest.h>

using namespace aoc::day10;

// Example test input from the problem description
const std::string TEST_INPUT = R"(example input here)";

class Day10Test : public ::testing::Test {
 protected:
  Day10Solution solution;
};

// Tests for Part 1
TEST_F(Day10Test, Part1_Example) {
  // TODO: Update expected value based on the actual problem
  EXPECT_EQ(solution.part1(TEST_INPUT), "expected_result");
}

TEST_F(Day10Test, Part1_ActualInput) {
  auto input = aoc::Solution::readDayInput(10);
  auto result = solution.part1(input);
  std::cout << "Part 1 Result: " << result << std::endl;
  // Uncomment and add expected value once you know the answer
  // EXPECT_EQ(result, "known_answer");
}

// Tests for Part 2
TEST_F(Day10Test, Part2_Example) {
  // TODO: Update expected value based on the actual problem
  EXPECT_EQ(solution.part2(TEST_INPUT), "expected_result");
}

TEST_F(Day10Test, Part2_ActualInput) {
  auto input = aoc::Solution::readDayInput(10);
  auto result = solution.part2(input);
  std::cout << "Part 2 Result: " << result << std::endl;
  // Uncomment and add expected value once you know the answer
  // EXPECT_EQ(result, "known_answer");
}
