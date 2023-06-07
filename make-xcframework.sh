#!/bin/bash

set -e

sh ./gradlew shared:linkReleaseFrameworkIosArm64 shared:linkReleaseFrameworkIosSimulatorArm64

rm -rf iosApp/Modules/Artifacts/shared.xcframework/ios-arm64
rm -rf iosApp/Modules/Artifacts/shared.xcframework/ios-x86_64_arm64-simulator

cp -R shared/build/bin/iosArm64/releaseFramework iosApp/Modules/Artifacts/shared.xcframework/ios-arm64
cp -R shared/build/bin/iosSimulatorArm64/releaseFramework iosApp/Modules/Artifacts/shared.xcframework/ios-x86_64_arm64-simulator