#11. Shell script to print specified range of lines from given files



if [ $# -ne 3 ]
then 
	echo "syntax error"
	echo "<*.sh filename lowerlimt upperlimit>"
	exit
fi

file=$1
l=$2
u=$3
echo "\n----------------------"
echo "lines between $l - $u is printed below\n"

cat $file | head -$u | tail +$l
exit



<<com

OUTPUT

ksb@ksb-ThinkCentre-Edge72:~/janan/NETWORK/record programs$ cat >file
java
python
dbms
c
c++
html
shell

ksb@ksb-ThinkCentre-Edge72:~/janan/NETWORK/record programs$ sh 11range.sh file 3 5

----------------------
lines between 3 - 5 is printed below

dbms
c
c++
 


com
