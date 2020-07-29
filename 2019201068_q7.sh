#!/bin/bash

clear
x=22
y=72
count=1;
tput cup $x $y
echo "@@@"
while true
do


read -r -sn1 key
case "$key" in
    C) 
 (( count=count+1 ))
for (( k=0; k<count;k++ ))
do
(( y=y+1 ))

clear
tput cup $x $y
tput setab 8
echo  "@@@"
done
;;
    D)

 (( count=count+1 ))
for (( k=0; k<count;k++ ))
do
(( y=y-1 ))

clear
tput cup $x $y
tput setab 26
echo  "@@@"
done
;;

esac

done
