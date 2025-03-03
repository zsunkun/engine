TESTING_DIRECTORY=$(dirname "${BASH_SOURCE[0]}")

TSAN_SUPPRESSIONS_FILE="${TESTING_DIRECTORY}/tsan_suppressions.txt"
export TSAN_OPTIONS="suppressions=${TSAN_SUPPRESSIONS_FILE}"
echo "Using Thread Sanitizer suppressions in ${TSAN_SUPPRESSIONS_FILE}"

LSAN_SUPPRESSIONS_FILE="${TESTING_DIRECTORY}/lsan_suppressions.txt"
export LSAN_OPTIONS="suppressions=${LSAN_SUPPRESSIONS_FILE}"
echo "Using Leak Sanitizer suppressions in ${LSAN_SUPPRESSIONS_FILE}"

UBSAN_SUPPRESSIONS_FILE="${TESTING_DIRECTORY}/ubsan_suppressions.txt"
export UBSAN_OPTIONS="suppressions=${UBSAN_SUPPRESSIONS_FILE}"
echo "Using Undefined Behavior suppressions in ${UBSAN_SUPPRESSIONS_FILE}"


export ASAN_OPTIONS="detect_leaks=0:detect_container_overflow=0"
