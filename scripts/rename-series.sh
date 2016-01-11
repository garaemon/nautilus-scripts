#!/bin/bash

base_name=$(zenity --entry)
prefix=$(echo $base_name | cut -d. -f 1)
suffix=$(echo $base_name | cut -d. -f 2)
counter=0
IFS="
"
for f in $NAUTILUS_SCRIPT_SELECTED_FILE_PATHS
do
    mv -i "$f" ${prefix}_${counter}.${suffix}
    counter=$(expr $counter + 1)
done
exit
