# Advent of Code 2025 - C++23

Solutions for Advent of Code 2025 using C++23 and Google Test.

## Setup

### Prerequisites

- CMake 3.20 or higher
- C++ compiler with C++23 support (GCC 11+, Clang 14+, or MSVC 2022+)
- VS Code with C/C++ and CMake Tools extensions (recommended)

### Building

1. Configure the project:

```bash
cmake -S . -B build -DCMAKE_BUILD_TYPE=Debug
```

2. Build all tests:

```bash
cmake --build build --parallel
```

3. Build a specific day:

```bash
cmake --build build --target day01_test --parallel
```

### Running Solutions

#### Quick Run (Recommended) 🚀

Build and run any day with a single command:

```bash
# For Fish shell users
./run_day.fish 1    # Runs Day 1
./run_day.fish 12   # Runs Day 12

# For Bash/Zsh users
./run_day.sh 1      # Runs Day 1
./run_day.sh 12     # Runs Day 12
```

This will automatically:

- Configure CMake (if needed)
- Build only the specified day
- Run all tests for that day

#### From VS Code

- Use the Test Explorer to run individual tests
- Use the "Run Day XX Tests" task from the Command Palette (Ctrl+Shift+P > Tasks: Run Task)
- Use the debugger with the provided launch configurations

#### From Command Line (Advanced)

```bash
# Run all tests for day 1
./build/src/day01/day01_test

# Run only part 1 tests
./build/src/day01/day01_test --gtest_filter="*Part1*"

# Run only the actual solution (not example tests)
./build/src/day01/day01_test --gtest_filter="*ActualInput"
```

## Structure

```
2025/
├── CMakeLists.txt          # Main CMake configuration
├── include/
│   └── solution.h          # Base Solution class
├── src/
│   └── day01/              # Day 1 solution
│       ├── CMakeLists.txt  # Day-specific build config
│       ├── day01.h         # Header file
│       ├── day01.cpp       # Implementation
│       └── day01_test.cpp  # Tests and solution runner
└── input/
    └── day01.txt           # Puzzle input
```

## Adding a New Day

1. Copy the `src/day01` directory to `src/dayXX`
2. Rename files from `day01` to `dayXX`
3. Update the namespace in the code from `day01` to `dayXX`
4. Uncomment the corresponding line in the main `CMakeLists.txt`:
   ```cmake
   add_subdirectory(src/dayXX)
   ```
5. Add your input to `input/dayXX.txt`
6. Implement the solutions in `dayXX.cpp`

## Workflow

1. Read the problem on [adventofcode.com](https://adventofcode.com/2025)
2. Add the example input to the test file
3. Implement the solution
4. Run the example tests to verify correctness
5. Download your personal input and add it to `input/dayXX.txt`
6. Run the actual input test to get your answer
7. Submit the answer on the website

## Tips

- The `Part1_ActualInput` and `Part2_ActualInput` tests print the result to stdout
- You can assert the expected answer once you've submitted it successfully
- Use the VS Code Test Explorer for easy test navigation
- Debugging is fully supported - just set breakpoints and use F5
