#!/usr/bin/env fish

# Advent of Code 2025 - Build and Run Script (Fish Shell)
# Usage: ./run_day.fish <day_number> [--build-only]
# Example: ./run_day.fish 1
# Example: ./run_day.fish 1 --build-only

if test (count $argv) -eq 0
    echo "Usage: $argv[0] <day_number> [--build-only]"
    echo "Example: $argv[0] 1"
    echo "Example: $argv[0] 1 --build-only (build but don't run)"
    echo ""
    echo "This will build and run tests for the specified day."
    exit 1
end

set DAY (printf "%02d" $argv[1])
set TARGET "day$DAY"_test
set BUILD_DIR "build"

echo "🎄 Advent of Code 2025 - Day $DAY"
echo "================================"

# Configure CMake if build directory doesn't exist
if not test -d $BUILD_DIR
    echo "📦 Configuring CMake..."
    cmake -S . -B $BUILD_DIR -DCMAKE_BUILD_TYPE=Debug
end

# Build the specific day
echo "🔨 Building Day $DAY..."
cmake --build $BUILD_DIR --target $TARGET --parallel

# Check if build-only flag is set
if test (count $argv) -ge 2; and test "$argv[2]" = "--build-only"
    echo "✅ Build complete!"
    exit 0
end

# Run the tests
echo ""
echo "🧪 Running tests for Day $DAY..."
echo "================================"
./$BUILD_DIR/src/day$DAY/$TARGET
