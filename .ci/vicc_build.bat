@echo on

echo "%PATH%"

bash.exe -c "cd virtualsmartcard && autoreconf -i && exec 0</dev/null ./configure --enable-libpcsclite HELP2MAN=/usr/bin/true" || goto :err
bash.exe -c "make vicc -C virtualsmartcard/src/vpicc" || goto :err
pyinstaller --onefile virtualsmartcard\src\vpicc\vicc -i doc\_static\chip.ico --distpath $env:ARTIFACT || goto :err

:err
exit /b %errorlevel%
