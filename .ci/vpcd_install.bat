@echo on

setx /M PATH "%PATH%;C:\cygwin\bin"
git submodule update --init --recursive || goto :err
call "%VCVARSALL%" %VCVARS_PLATFORM% || goto :err

:err
exit /b %errorlevel%
