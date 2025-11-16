#pragma once

#include <fstream>
#include <sstream>
#include <stdexcept>
#include <string>

namespace aoc {

/**
 * Base class for Advent of Code solutions
 * Each day should inherit from this and implement part1() and part2()
 */
class Solution {
 public:
  virtual ~Solution() = default;

  // Override these methods for each day's solution
  virtual std::string part1(const std::string& input) = 0;
  virtual std::string part2(const std::string& input) = 0;

  // Helper method to read input from file
  static std::string readInput(const std::string& filename) {
    std::ifstream file(filename);
    if (!file.is_open()) {
      throw std::runtime_error("Could not open file: " + filename);
    }

    std::stringstream buffer;
    buffer << file.rdbuf();
    return buffer.str();
  }

  // Helper method to read input for a specific day
  static std::string readDayInput(int day) {
    std::string filename = std::string(PROJECT_SOURCE_DIR) + "/input/day" +
                           (day < 10 ? "0" : "") + std::to_string(day) + ".txt";
    return readInput(filename);
  }
};

}  // namespace aoc
