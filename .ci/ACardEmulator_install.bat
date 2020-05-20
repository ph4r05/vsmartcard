@echo on

pushd ACardEmulator
gradlew.bat --version || goto :err
popd

:err
exit /b %errorlevel%
