#!/bin/bash

for file in `ls`; do
	mv $file ./temp/$file.txt
done
