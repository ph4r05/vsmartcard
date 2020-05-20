@echo on

git submodule update --init --recursive || goto :err
call "%VCVARSALL%" %VCVARS_PLATFORM% || goto :err

:err
exit /b %errorlevel%
