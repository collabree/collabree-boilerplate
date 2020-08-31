#!/bin/sh
file=test/codeCoverage_test.dart
echo "// THIS FILE IS AUTO-GENERATED" > $file
echo "// To regenerate this file, run ./bin/test-generate-imports.sh in project root folder." >> $file
echo "// This files helps to get every file recognized by the testrunner and get a real code coverage result.\n" >> $file
echo "// ignore_for_file: unused_import" >> $file
find lib -not -name '*.g.dart' -and -not -name '*Events.dart' -and -not -name '*States.dart'  -and -name '*.dart' | cut -c4- | sort | awk -v package=$1 '{printf "import '\''package:collabree%s%s'\'';\n", package, $1}' >> $file
echo "\nvoid main() {}" >> $file