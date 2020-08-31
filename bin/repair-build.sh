#!/bin/bash

# Clean all build artifacts
flutter clean

# Re-download all packages included in pubspec.yaml. This resets potential local changes.
flutter pub cache repair

# Remove the cached App.framework. Xcode refuses to change between sim and physical device
# without regenerating it.
rm -r ios/Flutter/App.framework

# Remove the Xcode DerivedData folder. Only necessary if Xcode really started choking on
# something. Only enable if necessary. Nothing will break if it's enabled but since it
# is Mac-only and usually not required, it's commented out by default.
#rm -r /Users/`whoami`/Library/Developer/Xcode/DerivedData
