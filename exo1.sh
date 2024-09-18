 #!/bin/bash

if [ -z "$1" ]; then 
    echo "erreure fournire une date" 
    exit 1
fi

YEAR=$1

if [ -d "$YEAR" ]; then
    echo "le repertoire '$YEAR' existe déjà suppression " 
    rm -rf "$YEAR"EAR=$1
fi 

mkdir "$YEAR"
echo "Le répertoire '$YEAR' a été crée "

for month in {01..12}; do

    month_name=$(date -d "$YEAR-$month-01" +"%B")
    mkdir -p "$YEAR/$month_name"

    for day in $(seq 1 $(date -d "$YEAR-$mount-01 +1 month -1 day" "+%d")); do
        day_of_week=$(date -d "$YEAR-$month-$day" +%A)
    
        touch "$YEAR/$month_name/$day-$day_of_week.txt"
    done
done

echo "programme fini"