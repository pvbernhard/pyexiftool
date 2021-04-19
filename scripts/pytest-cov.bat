@echo off

pushd %~dp0..

echo ______________________
echo *** PyExifTool automation ***
echo PyTest Coverage Script
echo;
echo pip's PyTest version
python -m pip show pytest | findstr /l /c:"Version:"
echo pip's PyTest-cov version
python -m pip show pytest-cov | findstr /l /c:"Version:"
echo ______________________

REM added the --cov= so that it doesn't try to test coverage on the virtualenv directory
python.exe -m pytest -v --cov=exiftool --cov-report term-missing tests/

popd