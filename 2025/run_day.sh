#!/usr/bin/env bash

# Advent of Code 2025 - Build and Run Script (Bash)
# Usage: ./run_day.sh <day_number> [--build-only]
# Example: ./run_day.sh 1
# Example: ./run_day.sh 1 --build-only

set -e  # Exit on error

if [ $# -eq 0 ]; then
    echo "Usage: $0 <day_number> [--build-only]"
    echo "Example: $0 1"
    echo "Example: $0 1 --build-only (build but don't run)"
    echo ""
    echo "This will build and run tests for the specified day."
    exit 1
fi

DAY=$(printf "%02d" $1)
TARGET="day${DAY}_test"
BUILD_DIR="build"

echo "🎄 Advent of Code 2025 - Day $DAY"
echo "================================"

# Configure CMake if build directory doesn't exist or build type is not Debug
NEED_CONFIGURE=0
if [ ! -d "$BUILD_DIR" ]; then
    NEED_CONFIGURE=1
elif [ -f "$BUILD_DIR/CMakeCache.txt" ]; then
    # Check if CMAKE_BUILD_TYPE is set to Debug
    if ! grep -q "CMAKE_BUILD_TYPE:STRING=Debug" "$BUILD_DIR/CMakeCache.txt"; then
        NEED_CONFIGURE=1
    fi
else
    NEED_CONFIGURE=1
fi

if [ $NEED_CONFIGURE -eq 1 ]; then
    echo "📦 Configuring CMake with Debug build type..."
    cmake -S . -B "$BUILD_DIR" -DCMAKE_BUILD_TYPE=Debug
fi

# Build the specific day
echo "🔨 Building Day $DAY..."
cmake --build "$BUILD_DIR" --target "$TARGET" --parallel

# Check if build-only flag is set
if [ $# -ge 2 ] && [ "$2" = "--build-only" ]; then
    echo "✅ Build complete!"
    exit 0
fi

# Run the tests
echo ""
echo "🧪 Running tests for Day $DAY..."
echo "================================"
"./$BUILD_DIR/src/day${DAY}/${TARGET}"
