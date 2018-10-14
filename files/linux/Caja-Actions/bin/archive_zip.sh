#!/bin/bash
nArgs=$#
strfn=""
_strfn=""
for (( i=1; i<=nArgs; i++ )); do
    fn=${1}
    strfn+="'$fn' "
    _strfn+=" $fn\n"
    shift 1
done
echo -e "Будут добавлены в архив:\n\n$_strfn"
DIRNAME=${PWD##*/}
NAME=$(zenity --entry --title="Название архива" --text="Введите название архива:" --entry-text="$DIRNAME.zip")
if [ "$?" -eq 1 ]; then
    exit 1
fi
NAME=$(echo "$NAME" | tr -d "[:space:][:cntrl:]")
if [ "$NAME" = "" ]; then
    NAME="$DIRNAME.zip"
fi
eval "7z a -tzip -mx0 -r- $NAME $strfn"
sleep 10
