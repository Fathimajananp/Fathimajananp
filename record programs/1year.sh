#1 Shell script to test whether the given year is a leap year or not
#set -vx
#clear
if [ $# -gt 1 ]
then
  echo "syntax is <$0> [<year>]"
  exit 1
fi
if [ $# -ne 1 ]
then 
  yr=`date +%Y`
else
  yr=$1
fi
d4=`expr $yr % 4`
d100=`expr $yr % 100`
d400=`expr $yr % 400`
if [ $d4 -eq 0 -a $d100 -ne 0 -o $d400 -eq 0 ]
then
  echo " $yr is a leap year"
else
  echo "$yr is not a leap year"
fi 


<<com

OUTPUT


ksb@ksb-ThinkCentre-Edge72:~/janan/NETWORK/record programs$ sh 1year.sh
2022 is not a leap year
ksb@ksb-ThinkCentre-Edge72:~/janan/NETWORK/record programs$ sh 1year.sh 2012
2012 is a leap year

com

