@echo on

pushd ACardEmulator
call gradlew.bat --version || goto :err
popd

:err
exit /b %errorlevel%
