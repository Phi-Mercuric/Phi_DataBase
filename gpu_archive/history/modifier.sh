#!/bin/bash

rois=`cat $1| grep "/-"|sort -u|tr -d ': /-'| tr -s "\n" "|"`
lines=`echo $rois| tr -dc '|'| wc -c`
		
for (( roiIt=1; roiIt<=$lines; roiIt++ )); do
	s=`echo $rois| cut -d "|" -f $roiIt`
	cat $1| grep -A 6 "/- $s "
done

