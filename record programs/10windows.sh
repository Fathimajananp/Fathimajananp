#10. Shell script to display the content of a directory file in windows style
if [ $# -ne 0 ]
then
	 echo "Syntax error"
	 echo "< $0 >"
	exit
fi
ter=`tty`
ls -l > lsl
exec < lsl
cd=0
while read line
do
	
 	cd=`expr $cd + 1`
 	if [ $cd -eq 1 ]
 	then
		echo $line
 		continue
 	fi
	
	i=`echo $line | cut -d " " -f 9-`
	t=`date +%d/%m/%Y"  "%r -r "$i"`
	b=`echo $line | cut -d " " -f 5`
	if [ -d "$i" ]
	then
		echo  "$t\t<DIR>\t  $b\t   $i"	   
	else
	
		echo  "$t\t     \t  $b\t   $i"	
	fi
done
	
exec < $ter	 
rm lsl


<<com

ksb@ksb-ThinkCentre-Edge72:~/janan/NETWORK/record programs$ sh windows.sh
total 60
06/06/2022  02:33:48 PM IST	     	  519	   10windows.sh
19/05/2022  12:19:44 PM IST	     	  389	   1year.sh
19/05/2022  12:37:29 PM IST	     	  492	   2triangle.sh
01/06/2022  12:26:58 PM IST	     	  817	   3prime.sh
26/05/2022  12:33:58 PM IST	<DIR>	  4096	   4rename
02/06/2022  12:02:11 PM IST	     	  963	   5cmpfiles.sh
19/05/2022  12:17:39 PM IST	     	  683	   6count.sh
19/05/2022  12:56:36 PM IST	     	  506	   7display.sh
19/05/2022  01:06:50 PM IST	     	  624	   8lastfirst.sh
19/05/2022  01:08:48 PM IST	     	  340	   9linux.sh
01/06/2022  12:31:16 PM IST	     	  37	   book
26/05/2022  01:04:23 PM IST	     	  13	   f1
01/06/2022  12:53:12 PM IST	     	  17	   linux
06/06/2022  02:33:56 PM IST	     	  0	   lsl
19/05/2022  11:39:26 AM IST	     	  14	   toy
26/05/2022  11:45:45 AM IST	     	  519	   windows.sh

com
