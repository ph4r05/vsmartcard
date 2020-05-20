 call "%VCVARSALL%" %VCVARS_PLATFORM% || goto :err

goto :EOF
:err
exit /b %errorlevel%
