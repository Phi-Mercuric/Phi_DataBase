#!/bin/bash

# PLACEHOLDER
# at least until python port


echo '( BACKUP FILE )' >> ~/Phi_DataBase/gpu_archive/roi_list.csv

mv ~/Phi_DataBase/gpu_archive/roi_list.csv ~/Phi_DataBase/gpu_archive/.roi_list_bkp.csv

for i in {1..40}; do
	line=`cat ~/Phi_DataBase/gpu_archive/gpu_format.txt|head -n $i|tail -n 1`
	for file in `ls ~/Phi_DataBase/gpu_archive/history`; do
		declare -i value
		value=`cat ~/Phi_DataBase/gpu_archive/history/$file|grep 'ROI'|tr -d '| avergROI     ~dys'|head -n $i|tail -n 1`
		if [[ $value -lt 50 ]]; then
			value="3390"
		elif [[ $value -gt 1000 ]]; then
			value="3390"
		fi
		line+=,"$value"
		
	done
	echo "$line"|tr -s "	" "," >> ~/Phi_DataBase/gpu_archive/roi_list.csv
done
