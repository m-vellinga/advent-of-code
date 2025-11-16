#!/usr/bin/env bash

# Advent of Code 2025 - Build and Run Script
# Usage: ./run_day.sh <day_number>
# Example: ./run_day.sh 1

set -e  # Exit on error

if [ $# -eq 0 ]; then
    echo "Usage: $0 <day_number>"
    echo "Example: $0 1"
    echo ""
    echo "This will build and run tests for the specified day."
    exit 1
fi

DAY=$(printf "%02d" $1)
TARGET="day${DAY}_test"
BUILD_DIR="build"

echo "🎄 Advent of Code 2025 - Day $DAY"
echo "================================"

# Configure CMake if build directory doesn't exist
if [ ! -d "$BUILD_DIR" ]; then
    echo "📦 Configuring CMake..."
    cmake -S . -B "$BUILD_DIR" -DCMAKE_BUILD_TYPE=Debug
fi

# Build the specific day
echo "🔨 Building Day $DAY..."
cmake --build "$BUILD_DIR" --target "$TARGET" --parallel

# Run the tests
echo ""
echo "🧪 Running tests for Day $DAY..."
echo "================================"
"./$BUILD_DIR/src/day${DAY}/${TARGET}"
