@echo on

msbuild.exe virtualsmartcard\win32\BixVReader.sln /p:Configuration=Release;Platform=%MSBUILD_PLATFORM% || goto :err
move virtualsmartcard\win32\BixVReaderInstaller\bin\%X64%Release\BixVReaderInstaller.msi %ARTIFACT% || goto :err
cl /Ivirtualsmartcard\src\vpcd virtualsmartcard\src\vpcd-config\vpcd-config.c /NODEFAULTLIB:MSVCRTD  /NODEFAULTLIB:MSVCRT virtualsmartcard\src\vpcd-config\local-ip.c ws2_32.lib || goto :err
move vpcd-config.exe %ARTIFACT% || goto :err

:err
exit /b %errorlevel%
