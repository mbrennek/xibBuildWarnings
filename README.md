# Summary

When using xcodebuild to build an iOS project with XIB files, each xib file projects many new warnings/notices along the lines of:

2015-10-22 10:24:39.486 Interface Builder Cocoa Touch Tool[13419:319249] CoreUI: CUICatalog: couldn't get 'kMGArtworkGraphicsFeatureSetFallbacks' from MGCopyAnswer got '{
    ArtworkDeviceIdiom = pad;
    ArtworkDeviceScaleFactor = "-1";
    DevicePerformanceMemoryClass = 1;
}'

These warnings are not present when building with the Xcode UI.  This clutters up the build log greatly and makes QA very cranky when they look at our CI output.  My relatively small project with ~100 xibs produces 4700 warnings.

# Steps to Reproduce

1. Download the XIBUIExample project
2. view the attached build log, or build yourself using 'xcodebuild build -project XIBUIExample.xcodeproj -configuration Debug -sdk iphoneos'
3. See all the new notices from the single xib file.
4. Be sad

# Expected Results

No warnings/notices from ibtool when building the attached example.

Please either disable these new warnings, provide a way for us developers to disable them, or explain what needs to be changed in the xib to make them go away.  The attached example project is as simple as can be with a single UITableViewController in a xib with no autolayout or size classes and it still has 8 of these warnings.

# Actual Results

Many, many warnings from project that builds cleanly with Xcode 6.4.  Sadness.

# Version

Xcode 7.1 (7B91b) w/ iOS 9.1 SDK  (but also happened with 7.0 and 7.0.1)

