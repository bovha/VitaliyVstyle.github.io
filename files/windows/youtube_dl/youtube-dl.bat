@echo off
setlocal enableextensions
chcp 1251 >nul
title Youtube-dl
cd /d "%~dp0"

if not exist youtube-dl.exe (
    cls
    echo youtube-dl.exe не найден.
    goto:error
)

if "%~1" == "" (
    echo Версия youtube-dl:
    youtube-dl --version
    goto youtubepromt
)

for /f "usebackq delims=" %%i in (
    `@"%systemroot%\system32\mshta.exe" "javascript: var objShellApp = new ActiveXObject('Shell.Application'); var Folder = objShellApp.BrowseForFolder(0, 'Выбрать директорию',1, '::{20D04FE0-3AEA-1069-A2D8-08002B30309D}'); try {new ActiveXObject('Scripting.FileSystemObject').GetStandardStream(1).Write(Folder.Self.Path)};catch (e) {}; close();" ^
    1^|more`
) do set sFolderName=%%i

if not defined sFolderName (
    echo Папка не выбрана.
    goto youtubepromt
)

youtube-dl -o "%sFolderName%\%%(title)s.%%(ext)s" --restrict-filenames "%~1"
goto youtubepromt

:youtubepromt
echo.
echo Для справки: youtube-dl -h
echo.
cmd /q /k
goto:eof

:error
echo.
echo Нажмите любую клавишу для выхода.
pause >nul
goto:eof