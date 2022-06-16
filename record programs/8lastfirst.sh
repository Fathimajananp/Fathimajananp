#8. Shell script to display a file from last line to first line

if [ $# -ne 1 ]
then
	echo "syntax error"
	echo " $0 filename"
	exit
fi

file=$1
ter=`tty`
exec < $file
c=0
while read line
do
c=`expr $c + 1`
done
exec < $ter

while [ 0 -le $c ]
do
cat $file | head -$c | tail +$c
c=`expr $c - 1`
done 




<<com

OUTPUT

ksb@ksb-ThinkCentre-Edge72:~/janan/NETWORK/record programs$ sh lastfirst.sh
syntax error
 lastfirst.sh filename


ksb@ksb-ThinkCentre-Edge72:~/janan/NETWORK/record programs$ cat book
story
poem
novels


ksb@ksb-ThinkCentre-Edge72:~/janan/NETWORK/record programs$ sh lastfirst.sh book
novels
poem
story


com

