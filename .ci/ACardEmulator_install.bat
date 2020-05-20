@echo on

pushd ACardEmulator
gradlew.bat --version
popd

:err
exit /b %errorlevel%
