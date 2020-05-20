git submodule update --init --recursive || goto :err
call "%VCVARSALL%" %VCVARS_PLATFORM% || goto :err
set PATH="C:\cygwin\bin;%PATH%" || goto :err

goto :EOF
:err
exit /b %errorlevel%
