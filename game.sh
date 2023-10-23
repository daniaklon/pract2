#!/bin/bash

rmnum=$(($RANDOM%100))
echo $rmnum
for ((i=1;i<101;i++))
do
	case $(((($rmnum > $i) * 2) + ($rmnum < $i) + 0)) in
	0)
		echo "<title>$i.</title><body>You guessed the number!</body>" > public_html/$i.html
		;;
	1)	
		echo "<title>$i.</title><body>Number is lesser</body>" > public_html/$i.html
		;;
	2)	
		echo "<title>$i.</title><body>Number is greater</body>" > public_html/$i.html
		;;
	esac
done
