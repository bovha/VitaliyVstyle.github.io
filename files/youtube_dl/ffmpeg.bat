@echo off
setlocal enableextensions
chcp 1251 >nul
title ffmpeg
cd /d "%~dp0"

if not exist ffmpeg.exe (
    cls
    echo ffmpeg.exe �� ������.
    goto:error
)

if "%~1" == "" (
    ffmpeg -version
    goto ffmpegpromt
)

for /f "usebackq delims=" %%i in (
    `@"%systemroot%\system32\mshta.exe" "javascript: var objShellApp = new ActiveXObject('Shell.Application'); var Folder = objShellApp.BrowseForFolder(0, '������� ����������',1, '::{20D04FE0-3AEA-1069-A2D8-08002B30309D}'); try {new ActiveXObject('Scripting.FileSystemObject').GetStandardStream(1).Write(Folder.Self.Path)};catch (e) {}; close();" ^
    1^|more`
) do set sFolderName=%%i

if not defined sFolderName (
    echo ����� �� �������.
    goto ffmpegpromt
)

set filename=mp4video
set /p filename=������� �������� ����� (��� ����������):

ffmpeg -i "%~1" -c:a copy -c:v copy -f mp4 "%sFolderName%\%filename%.mp4"
goto ffmpegpromt

:ffmpegpromt
echo.
echo ��� �������: ffmpeg -h
echo ��� ��������: ffmpeg -formats ^| more
echo ��� �������: ffmpeg -codecs ^| more
echo.
cmd /q /k
goto:eof

:error
echo.
echo ������� ����� ������� ��� ������.
pause >nul
goto:eof
