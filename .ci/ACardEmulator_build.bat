@echo on

pushd ACardEmulator
call gradlew.bat build || goto :err
move *.apk %ARTIFACT% || goto :err
popd

:err
exit /b %errorlevel%
