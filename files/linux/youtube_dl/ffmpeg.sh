#!/bin/bash

if [ -n "$1" ]; then
    DIR=$(zenity --file-selection --directory --title="Выбрать директорию")
    if [ "$?" -eq 1 ]; then
        exit 1
    fi
    NAME=$(zenity --entry --title="Название файла" --text="Введите название файла (без расширения):" --entry-text="mp4video")
    if [ "$?" -eq 1 ]; then
        exit 1
    fi
    NAME=$(echo $NAME)
    if [ "$NAME" = "" ]; then
        NAME="mp4video"
    fi
    mate-terminal --profile=youtube-dl --command "ffmpeg -i '$1' -c:a copy -c:v copy -f mp4 '$DIR'/'$NAME'.mp4"
fi
