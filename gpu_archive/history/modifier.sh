



#!/bin/bash

for file in `ls /root/Phi_DataBase/gpu_archive/history/temp/`; do
	cat /root/Phi_DataBase/gpu_archive/history/$file|grep "_3080" -B 9999 -A 6 > /root/Phi_DataBase/gpu_archive/history/temp2/$file
	echo '
/- GeForce_RTX_3080_Ti_ :
| link			 https://www.ebay.com/dsc/i.html?_from=R40&_sacat=0&LH_TitleDesc=1&_udlo=&_udhi=&LH_BIN=1&LH_ItemCondition=4&_ftrt=901&_ftrv=1&_sabdlo=&_sabdhi=&_samilow=&_samihi=&_sadis=15&_stpos=24201&_sop=12&_dmd=1&_ipg=25&_fosrp=1&_nkw=GeForce+RTX+3080&_ex_kw=parts+non+not&_in_kw=1
| average cost		 0
| average $/day		 $0.0
| average ROI		 ~0 days
| good/fake deals	  
' >> /root/Phi_DataBase/gpu_archive/history/temp2/$file
	cat /root/Phi_DataBase/gpu_archive/history/$file |grep "_3090" -A 1000 >> /root/Phi_DataBase/gpu_archive/history/temp2/$file
done
