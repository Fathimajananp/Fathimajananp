#6.Shell script to count the number of words and lines in a file
if [ $# -ne 1 ]
then 
	echo "syntax error"
	echo "< $0 filename >"
	exit
fi

fname=$1
ter=`tty`
exec < $fname
i=0
j=0
while read line
do
	i=`expr $i + 1`

for c in $line 
do
	j=`expr $j + 1`

done

done
echo "$fname has"
echo "Number of lines in this file is $i"
echo "Number of words in this file is $j"
exec < $ter



<<com


output


ksb@ksb-ThinkCentre-Edge72:~/janan/NETWORK/record programs$ cat file1
java
python
c
ds
network
programming languages


ksb@ksb-ThinkCentre-Edge72:~/janan/NETWORK/record programs$ sh count.sh file1
file1 has
Number of lines in this file is 6
Number of words in this file is 7

com


