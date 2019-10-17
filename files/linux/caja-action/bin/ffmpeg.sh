#!/bin/bash

if [ -n "$1" ]; then
    SDIR=$(dirname "$0")
    DIR=""
    read -r DIR < "$SDIR/directory.txt"
    if [ -z "$DIR" ]; then
        DIR="$HOME"
        echo "$DIR" > "$SDIR/directory.txt"
    fi
    cd "$DIR" || {
        DIR="$HOME"
        cd "$DIR" || exit 1
    }
    ZDIR=$(zenity --file-selection --directory --title="Выбрать директорию")
    if [ "$?" -eq 1 ]; then
        exit 1
    fi
    if [ "$ZDIR" != "$DIR" ]; then
        echo "$ZDIR" > "$SDIR/directory.txt"
        cd "$ZDIR" || exit 1
    fi
    NAME=$(zenity --entry --title="Название файла" --text="Введите название файла (без расширения):" --entry-text="mp4video")
    if [ "$?" -eq 1 ]; then
        exit 1
    fi
    NAME=$(echo "$NAME" | tr -d "[:space:][:punct:][:cntrl:]")
    if [ -z "$NAME" ]; then
        NAME="mp4video"
    fi
    mate-terminal --profile=youtube-dl --command "ffmpeg -i $1 -c:a copy -c:v copy -f mp4 $NAME.mp4"
fi
