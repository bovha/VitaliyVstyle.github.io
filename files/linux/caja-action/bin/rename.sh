#!/bin/bash
nArgs=$#
selAll=false
spAll=false
for (( i=1; i<=nArgs; i++ )); do
    fn=${1}
    if [ ! -f "$fn" ]; then
        echo "Пропуск: $fn не является файлом"
        shift 1
        continue
    fi
    if [ ! -w "$fn" ]; then
        echo "Пропуск: $fn не доступен для записи"
        shift 1
        continue
    fi
    if [[ ! "${fn%.*}" =~ [0-9]+ ]]; then
        echo "Пропуск: $fn не содержит цифр"
        shift 1
        continue
    fi
    regExp="s/[^0-9](?=.*\.)//g|s/[0-9]+/substr($&,0,3)/e|s/[0-9]+/sprintf('%03d',$&)/e"
    if [[ ! "$fn" =~ \.+ ]]; then
        regExp="s/[^0-9]+//g|s/[0-9]+/substr($&,0,3)/e|s/[0-9]+/sprintf('%03d',$&)/e"
    fi
    rename -n -d "$regExp" "$fn"
    if [ false = "$selAll" ]; then
        sel=$(zenity --list --radiolist --title="Переименовать файл?" --column="" --column="" --hide-header --width=500 --height=170 --cancel-label="Пропустить" --text="Выберите действие из списка ниже" TRUE "Переименовать $fn" FALSE "Переименовать все" FALSE "Пропустить все")
        case "$sel" in
            "Переименовать $fn" )
                rename -v -d "$regExp" "$fn"
            ;;
            "Переименовать все" )
                selAll=true
                rename -v -d "$regExp" "$fn"
            ;;
            "Пропустить все" )
                selAll=true
                spAll=true
                echo "Пропуск: $fn"
            ;;
            * )
                echo "Пропуск: $fn"
            ;;
        esac
    elif [ true = "$spAll" ]; then
        echo "Пропуск: $fn"
    else
        rename -v -d "$regExp" "$fn"
    fi
    shift 1
done
if [ false = "$spAll" ]; then
    sleep 10
fi
