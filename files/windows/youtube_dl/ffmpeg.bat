@echo off
setlocal enableextensions
chcp 1251 >nul
title ffmpeg
cd /d "%~dp0"

if not exist ffmpeg.exe (
    cls
    echo ffmpeg.exe не найден.
    goto:error
)

if "%~1" == "" (
    ffmpeg -version
    goto ffmpegpromt
)

for /f "usebackq delims=" %%i in (
    `@"%systemroot%\system32\mshta.exe" "javascript: var objShellApp = new ActiveXObject('Shell.Application'); var Folder = objShellApp.BrowseForFolder(0, 'Выбрать директорию',1, '::{20D04FE0-3AEA-1069-A2D8-08002B30309D}'); try {new ActiveXObject('Scripting.FileSystemObject').GetStandardStream(1).Write(Folder.Self.Path)};catch (e) {}; close();" ^
    1^|more`
) do set sFolderName=%%i

if not defined sFolderName (
    echo Папка не выбрана.
    goto ffmpegpromt
)

set filename=mp4video
set /p filename=Введите название файла (без расширения):

ffmpeg -i "%~1" -c:a copy -c:v copy -f mp4 "%sFolderName%\%filename%.mp4"
goto ffmpegpromt

:ffmpegpromt
echo.
echo Для справки: ffmpeg -h
echo Для форматов: ffmpeg -formats ^| more
echo Для кодеков: ffmpeg -codecs ^| more
echo.
cmd /q /k
goto:eof

:error
echo.
echo Нажмите любую клавишу для выхода.
pause >nul
goto:eof
