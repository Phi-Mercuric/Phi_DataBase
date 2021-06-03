#!/bin/bash

# PLACEHOLDER
# at least until python port


echo '( BACKUP FILE )' >> ~/Phi_DataBase/gpu_archive/roi_list.txt

mv ~/Phi_DataBase/gpu_archive/roi_list.txt ~/Phi_DataBase/gpu_archive/.roi_list_bkp.txt

for i in {1..39}; do
	line=""
	for file in `ls ~/Phi_DataBase/gpu_archive/history`; do
		line+=`cat ~/Phi_DataBase/gpu_archive/history/$file|grep 'ROI'|tr -d '| avergROI     ~dys'|head -n $i|tail -n 1`
	done
	echo "$line" >> ~/Phi_DataBase/gpu_archive/roi_list.txt
done


