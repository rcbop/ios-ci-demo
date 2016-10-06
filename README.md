# ios-ci-demo
iOS example app ready for Continuous Integration with Calabash E2E tests

*Running Unit tests from Jenkins*

BUILD_CONFIGURATION = { Debug-BR, Debug-AG, Debug-US }
```bash
echo ">> RUNNING AUTOMATED TESTS"
/usr/local/bin/xctool \
 -scheme MyCIDemoUnitTestBR \
 -sdk iphonesimulator \
 -configuration ${BUILD_CONFIGURATION} \
 -reporter pretty \
 -reporter junit:test-results.xml \
 -destination 'platform=iOS Simulator,name=iPhone 6,OS=9.3' \
 test -only "${TARGET}" || echo '>> TEST EXECUTION FAILED'
```

*Archiving and packaging IPA*

```bash
xcodebuild -scheme ${SCHEME} archive \
 -archivePath ${WORKSPACE}/MyCiDemo.xcarchive 
 
# erase old generated builds
rm -rf *.ipa

PROJECT_NAME=MyCIDemo

/usr/bin/xcrun -sdk iphoneos PackageApplication \
	-v "${WORKSPACE}/MyCiDemo.xcarchive/Products/Applications/${PROJECT_NAME}.app" \
    -o "${WORKSPACE}/${PROJECT_NAME}-${BUILD_NUMBER}.ipa" \
```
