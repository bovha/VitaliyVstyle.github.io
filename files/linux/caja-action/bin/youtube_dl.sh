#!/bin/bash

if [ -n "$1" ]; then
    SCRIPT_DIR=$(dirname "$0")
    DIR=""
    read -r DIR < "$SCRIPT_DIR/directory.txt"
    if [ -z "$DIR" ]; then
        DIR="$HOME"
        echo "$DIR" > "$SCRIPT_DIR/directory.txt"
    fi
    cd "$DIR" || {
        DIR="$HOME"
        cd "$DIR" || exit 1
    }
    DIR=$(zenity --file-selection --directory --title="Выбрать директорию")
    if [ "$?" -eq 1 ]; then
        exit 1
    fi
    echo "$DIR" > "$SCRIPT_DIR/directory.txt"
    cd "$DIR" || exit 1
    mate-terminal --profile=youtube-dl --command "$1"
fi

if [ -n "$2" ]; then
    mate-terminal --profile=youtube-dl --command "$2"
fi
