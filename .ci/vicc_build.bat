@echo on

echo "%PATH%"

bash -c "cd virtualsmartcard && autoreconf -i && exec 0</dev/null ./configure --enable-libpcsclite HELP2MAN=/usr/bin/true" || goto :err
bash -c "make vicc -C virtualsmartcard/src/vpicc" || goto :err
pyinstaller --onefile virtualsmartcard\src\vpicc\vicc -i doc\_static\chip.ico --distpath $env:ARTIFACT || goto :err

:err
exit /b %errorlevel%
