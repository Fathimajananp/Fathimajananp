#13. Shell script to count the occurrence of words in a file in a set of files


if [ $# -eq 0 ]
then 
	echo "Syntax error"
	echo "$0 file1 file2 etc..."
	exit
	fi

k=$#
j=0
echo "enter a word"
read word


ter=`tty`
while [ $k -gt 0 ]
do
fname=$1

exec < $fname
i=0
while read line
do
	for l in $line
	do
		echo $l | grep $word > grp
		if [ $? -eq 0 ]
		then
			i=`expr $i + 1`
		fi
	done
done

j=`expr $j + $i`
echo "occurrences of word $word in $fname - $i"
shift
k=`expr $k - 1`
exec < $ter
done

echo "total occurrences word $word - $j"
rm grp



<<com

OUTPUT

ksb@ksb-ThinkCentre-Edge72:~/janan/NETWORK/record programs$ cat > file1
hello
hi
how r u
hi
morning
hi
food
hi
bye
ksb@ksb-ThinkCentre-Edge72:~/janan/NETWORK/record programs$ sh 13words.sh file1
enter a word
hi
occurrences of word hi in file1 - 4
total occurrences word hi - 4

com



