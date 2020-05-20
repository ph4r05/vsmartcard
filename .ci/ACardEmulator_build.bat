@echo on

pushd ACardEmulator
gradlew.bat build || goto :err
move *.apk %ARTIFACT% || goto :err
popd

:err
exit /b %errorlevel%
