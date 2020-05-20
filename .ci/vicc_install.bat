@echo on

git submodule update --init --recursive || goto :err
choco install swig || goto :err
python -m pip install --upgrade pip || goto :err
pip install virtualenv || goto :err
pip install -U setuptools || goto :err
easy_install PyCrypto || goto :err
pip install pbkdf2 || goto :err
pip install Pillow || goto :err
pip install pyreadline || goto :err
pip install pyscard || goto :err
pip install pyinstaller || goto :err
set PATH=%PATH%;C:\cygwin\bin || goto :err

:err
exit /b %errorlevel%
