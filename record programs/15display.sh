<<com
Shell script to perform a menu driven program to display
a) All ordinary files
b) All directory files
c) All special files
d) All files readable to UGO
e) All files writable to UGO
f) All files executable to UGO
com


if [ $# -ne 0 ]
then
	echo "Syntax error"
	echo "$0"
	exit
fi


while :
do
echo "\n1.Audinary files"
echo "2.Directory files"
echo "3.Special files"
echo "4.Readable files"
echo "5.Writable files"
echo "6.Executable files"
echo "-----------------------"
echo "\nselect your option:"
read opt

case $opt in

1) echo "Audinary files\n"
for file in *
do
	if [ -f $file ]
	then
		echo "$file"
	fi
done
;;
2) echo "directory files\n"
for file in *
do
        if [ -d $file ]
        then
                echo "$file"
        fi
done
;;
3) echo "Special files\n"
for file in *
do
        if [ -s $file ]
        then
                echo "$file"
        fi
done
;;
4) echo "Readable files\n"
for file in *
do
        if [ -r $file ]
        then
                echo "$file"
        fi
done
;;
5) echo "writable files\n"
for file in *
do
        if [ -w $file ]
        then
                echo "$file"
        fi
done
;;
6) echo "Executable files\n"
for file in *
do
        if [ -x $file ]
        then
                echo "$file"
        fi
done
;;
*)exit
;;
esac
done


<<com

OUTPUT

ksb@ksb-ThinkCentre-Edge72:~/janan/NETWORK/record programs$ sh 15display.sh

1.Audinary files
2.Directory files
3.Special files
4.Readable files
5.Writable files
6.Executable files
-----------------------

select your option:
1
Audinary files

10windows.sh
11range.sh
12file.sh
13words.sh
14modify.sh
15display.sh
1year.sh
2triangle.sh
3prime.sh
5cmpfiles.sh
6count.sh
7display.sh
8lastfirst.sh
9linux.sh
book
f1
file
file1
linux
new
newfile
toy

1.Audinary files
2.Directory files
3.Special files
4.Readable files
5.Writable files
6.Executable files
-----------------------

select your option:
2
directory files

4rename

1.Audinary files
2.Directory files
3.Special files
4.Readable files
5.Writable files
6.Executable files
-----------------------

select your option:
3
Special files

10windows.sh
11range.sh
12file.sh
13words.sh
14modify.sh
15display.sh
1year.sh
2triangle.sh
3prime.sh
4rename
5cmpfiles.sh
6count.sh
7display.sh
8lastfirst.sh
9linux.sh
book
f1
file
file1
linux
new
newfile
toy

1.Audinary files
2.Directory files
3.Special files
4.Readable files
5.Writable files
6.Executable files
-----------------------

select your option:
4
Readable files

10windows.sh
11range.sh
12file.sh
13words.sh
14modify.sh
15display.sh
1year.sh
2triangle.sh
3prime.sh
4rename
5cmpfiles.sh
6count.sh
7display.sh
8lastfirst.sh
9linux.sh
book
f1
file
file1
linux
new
newfile
toy

1.Audinary files
2.Directory files
3.Special files
4.Readable files
5.Writable files
6.Executable files
-----------------------

select your option:
5
writable files

10windows.sh
11range.sh
12file.sh
13words.sh
14modify.sh
15display.sh
1year.sh
2triangle.sh
3prime.sh
4rename
5cmpfiles.sh
6count.sh
7display.sh
8lastfirst.sh
9linux.sh
book
f1
file
file1
linux
new
newfile
toy

1.Audinary files
2.Directory files
3.Special files
4.Readable files
5.Writable files
6.Executable files
-----------------------

select your option:
6
Executable files

4rename

1.Audinary files
2.Directory files
3.Special files
4.Readable files
5.Writable files
6.Executable files
-----------------------

select your option:
7

com


