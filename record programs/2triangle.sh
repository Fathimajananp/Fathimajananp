#2 Shell script to read 3 numbers and test whether they can be sides of a triangle
if [ $# -ne 0 ]
then
 echo "Syntax is <$0>"
exit 1
fi
echo "Enter three numbers :"
read a b c
if [ `expr $a + $b` -gt $c -a  `expr $a + $c` -gt $b -a `expr $b + $c` -gt $a ]
then
  echo "Sides of the Triangle"
  exit
fi
echo "Numbers are not sides of the Triangle"



<<com

OUTPUT


Enter three numbers :
7 10 5
Sides of the Triangle

Enter three numbers :
1 10 12
Numbers are not sides of the Triangle

com


