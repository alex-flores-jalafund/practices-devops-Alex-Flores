#!bin/bash
#exercise 1
file=$1
while read line
do
	if [[ ${#line} >2 ]]; then
	echo $line
    	echo ${line:2:1}
	fi
done < $file
#---------------------------------------------------------------------

#!bin/bash
#exercise 1
file=$1
while read line
do
	echo $line
    	echo ${line:1:${#line}}
done < $file

#---------------------------------------------------------------------

#!bin/bash
#exercise 3
file=$1
while read line
do
    	echo $line
	if [[ ${#line} >6 ]]; then
    	echo ${line:1:1}
	echo ${line:6:1}
	else
    	echo ${line:1:1}${line:6:1}
	fi
done < $file