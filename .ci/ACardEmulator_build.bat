@echo on

pushd ACardEmulator
call gradlew.bat task --all || goto :err
call gradlew.bat build || goto :err
move *.apk %ARTIFACT% || goto :err
popd

:err
exit /b %errorlevel%
