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
    mate-terminal --profile=youtube-dl --command "$1"
fi

if [ -n "$2" ]; then
    mate-terminal --profile=youtube-dl --command "$2"
fi
