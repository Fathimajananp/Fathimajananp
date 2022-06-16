# 5 Shell script to compare two files. If the files are identical delete one
echo "Enter filename 1:"
read f1
echo "Enter filename 2:"
read f2
cmp $f1 $f2 /dev/null
if [ $? -eq 0 ]
then
	rm $f2
	echo "if the files are identical then remove the second file"
	exit
fi
echo "files are not identical"
 


<<com


output

ksb@ksb-ThinkCentre-Edge72:~/janan/NETWORK/record programs$ cat > book
story
poem
novels


ksb@ksb-ThinkCentre-Edge72:~/janan/NETWORK/record programs$ cat > toy
bus
car
lorry


ksb@ksb-ThinkCentre-Edge72:~/janan/NETWORK/record programs$ sh cmpfiles.sh
Enter filename 1:
book
Enter filename 2:
toy
book toy differ: byte 1, line 1
files are not identical


ksb@ksb-ThinkCentre-Edge72:~/janan/NETWORK/record programs$ cat > text
story
poem
novels


ksb@ksb-ThinkCentre-Edge72:~/janan/NETWORK/record programs$ sh cmpfiles.sh
Enter filename 1:
book
Enter filename 2:
text
if the files are identical then remove the second file

com


