msbuild virtualsmartcard\win32\BixVReader.sln /p:Configuration=Release;Platform=%MSBUILD_PLATFORM%
move virtualsmartcard\win32\BixVReaderInstaller\bin\%X64%Release\BixVReaderInstaller.msi %ARTIFACT%
cl /Ivirtualsmartcard\src\vpcd virtualsmartcard\src\vpcd-config\vpcd-config.c /NODEFAULTLIB:MSVCRTD  /NODEFAULTLIB:MSVCRT virtualsmartcard\src\vpcd-config\local-ip.c ws2_32.lib
move vpcd-config.exe %ARTIFACT%
