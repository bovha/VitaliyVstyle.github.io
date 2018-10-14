#!/bin/bash
nArgs=$#
for (( i=1; i<=nArgs; i++ )); do
    fn=${1}
    if [ ! -f "$fn" ]; then
        echo "Пропуск: $fn не является файлом"
        shift 1
        continue
    fi
    7z x "$fn" "-o${fn%.*}"
    shift 1
done
sleep 10
