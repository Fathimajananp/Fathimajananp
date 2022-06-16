#9. Shell script to delete all lines if a file containing word linux


if [ $# -ne 0 ]
then
	echo "syntax error"
	exit
fi

echo "Enter the file name:"
read file

ter=`tty`
exec < $file

while read line
do
echo $line | grep linux > file2
	if [ $? -eq 0 ]
	then
		continue
	fi	
	echo $line >> file1
done

mv file1 $file
rm file2
exec < $ter



<<com

OUTPUT


ksb@ksb-ThinkCentre-Edge72:~/janan/NETWORK/record programs$ cat linux
hello
hi
morning
coffee
tea
linux
butter
linux
garden
linux
ksb@ksb-ThinkCentre-Edge72:~/janan/NETWORK/record programs$ sh 9linux.sh
Enter the file name:
linux
ksb@ksb-ThinkCentre-Edge72:~/janan/NETWORK/record programs$ cat linux
hello
hi
morning
coffee
tea
butter
garden

com
