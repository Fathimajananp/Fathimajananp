#12.Shell script to copy a set of files given as pairs at command prompt

if [ `expr $# % 2` -ne 0 -o $# -eq 0 ]
then
	echo "syntax error"
	echo "<$0> <source file> <destination file> etc..."
	echo "Arguments must be even number"
	exit 1
fi

i=`expr $# / 2`

while [ $i -gt 0 ]
do

cp $1 $2


shift
shift
i=`expr $i - 1`
done
exit 0



<<com

OUTPUT

ksb@ksb-ThinkCentre-Edge72:~/janan/NETWORK/record programs$ cat > file
java
python
android
html
php

ksb@ksb-ThinkCentre-Edge72:~/janan/NETWORK/record programs$ sh 12file.sh file newfile
ksb@ksb-ThinkCentre-Edge72:~/janan/NETWORK/record programs$ cat newfile
java
python
android
html
php

com


