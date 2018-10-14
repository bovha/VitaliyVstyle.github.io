#!/bin/bash
git add --all
data=$(date '+%Y.%m.%d %H:%M:%S')
comment=$(zenity --entry --title="Комментарий" --text="Введите комментарий:" --entry-text="$data")
if [ "$?" -eq 1 ]; then
    comment="$data"
fi
git commit -m "$comment"
git push origin master
sleep 10
