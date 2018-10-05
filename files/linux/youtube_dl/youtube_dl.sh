#!/bin/bash

if [ -n "$1" ]; then
    DIR=$(zenity --file-selection --directory --title="Выбрать директорию")
    if [ "$?" -eq 1 ]; then
        exit 1
    fi
    mate-terminal --profile=youtube-dl --working-directory="$DIR/" --command "$1"
fi
