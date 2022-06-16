# 3 Shell script using command line to test whether given number is prime or not


if [ $# -ne 1 ] 
then 
	echo "syntax error"
	echo " < $0 no > "
exit
fi

num=$1
if [ $num -eq 1 ]
then 
	echo "The number is not a prime number "
exit
fi
i=2
flag=0

while [ $i -le `expr $num / 2` ]
do
if [ `expr $num % $i` -eq 0 ]
then
flag=1
break
fi

i=`expr $i + 1`
done
if [ $flag -eq 1 ]
then
	echo "The number $num is not a prime number"
else
	echo "The number $num is a prime number "
fi


<<com

OUTPUT

ksb@ksb-ThinkCentre-Edge72:~/janan/NETWORK/record programs$ sh prime.sh 1
The number is not a prime number 
ksb@ksb-ThinkCentre-Edge72:~/janan/NETWORK/record programs$ sh prime.sh 113
The number 113 is a prime number 
sb@ksb-ThinkCentre-Edge72:~/janan/NETWORK/record programs$ sh prime.sh 4
The number 4 is not a prime number

com


