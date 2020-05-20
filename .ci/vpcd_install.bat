@echo on

git submodule update --init --recursive || goto :err
call "%VCVARSALL%" %VCVARS_PLATFORM% || goto :err
set PATH=%PATH%;C:\cygwin\bin || goto :err

:err
exit /b %errorlevel%
