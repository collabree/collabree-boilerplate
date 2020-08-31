#!/bin/sh
./bin/test-generate-imports.sh
flutter test --coverage
genhtml coverage/lcov.info -o coverage/html
open -a "Google Chrome" coverage/html/index.html