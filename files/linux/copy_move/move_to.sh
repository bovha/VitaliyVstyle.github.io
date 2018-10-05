#!/bin/bash
nArgs=$#
DIR=$(zenity --file-selection --directory --title="Выбрать место для перемещения")

if [ "$?" -eq 1 ]; then
exit 1
fi

selAll=false
spAll=false
for (( i=1; i<=$nArgs; i++ )); do
f=${1}
fn=${1##*/}
echo "# Перемещается: $fn"
if [ false = "$selAll" ] && [ -e "$DIR/$fn" ]; then
sel=$(zenity --list --radiolist --title="Файловый конфликт" --column="" --column="" --hide-header --width=500 --height=170 --cancel-label="Пропустить" --text="Выберите действие из списка ниже" TRUE "Заменить $fn" FALSE "Заменить все" FALSE "Пропустить все")
case "$sel" in
"Заменить $fn" ) 
cp -R "$f" "$DIR/" && rm -R "$f"
;;
"Заменить все" ) 
selAll=true 
cp -R "$f" "$DIR/" && rm -R "$f"
;;
"Пропустить все" ) 
selAll=true
spAll=true
echo "# Пропуск: $fn"
;;
* )
echo "# Пропуск: $fn"
;;
esac
elif [ true = "$spAll" ] && [ -e "$DIR/$fn" ]; then
echo "# Пропуск: $fn"
else
cp -R "$f" "$DIR/" && rm -R "$f"
fi
echo "$(( (i * 100)/$nArgs ))"
sleep 0.5
shift 1
done | zenity --progress --title="Перемещение файлов в $DIR" --percentage=0  --width=400 --auto-close

if [ "$?" -eq 1 ]; then
zenity --info --text="Отмена перемещения..." --timeout=10
exit 1
fi
