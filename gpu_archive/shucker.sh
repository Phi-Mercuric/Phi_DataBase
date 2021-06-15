#!/bin/bash

# PLACEHOLDER
# at least until python port


echo '( BACKUP FILE )' >> ~/Phi_DataBase/gpu_archive/roi_list.csv

mv ~/Phi_DataBase/gpu_archive/roi_list.csv ~/Phi_DataBase/gpu_archive/.roi_list_bkp.csv

for i in {1..39}; do
	line=`cat ~/Phi_DataBase/gpu_archive/gpu_format.txt|head -n $i|tail -n 1`
	for file in `ls ~/Phi_DataBase/gpu_archive/history`; do
		line+=`cat ~/Phi_DataBase/gpu_archive/history/$file|grep 'ROI'|tr -d '| avergROI     ~dys'|head -n $i|tail -n 1`
	done
	echo "$line"|tr -s "	" ","
	echo "$line"|tr -s "	" "," >> ~/Phi_DataBase/gpu_archive/roi_list.csv
done
