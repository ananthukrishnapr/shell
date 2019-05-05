prgm1.sh
-------
hour=$(date +"%H")
if [ $hour -ge 0 -a $hour -lt 12 ]
then
greet = "good morning,$USER"
elif [ $hour -ge 12 -a $hour -lt 18 ]
then
greet="good afternoon,$USER"
else
greet="good evening,$USER"
fi
echo $greet

output
------
[mca1611033@localhost Desktop]$ sh prgm1.sh
good evening,mca1611033

prgm2.sh
--------
echo "hello" $*;

output
------
[mca1611033@localhost Desktop]$ sh prgm2.sh
hello
[mca1611033@localhost Desktop]$ sh prgm2.sh manu
hello manu


prgm3.sh
--------
a=$1
b=$2
while [ $a -le $b ]
do
echo -e " $a \c"
a=`expr $a + 1 `
done

output
------
[mca1611033@localhost Desktop]$ sh prgm3.sh 2 8 
 2  3  4  5  6  7  8 

prgm4.sh
--------
T=$1
echo "Enter number of seconds:"
read T
echo "Result"
echo "------"
H=$((T/60/60%24))
M=$((T/60%60))
S=$((T%60))
echo "$T Seconds in Hours: Minute: Seconds: $H: $M : $S";

output
------
[mca1611033@localhost Desktop]$ sh prgm4.sh  
Enter number of seconds:
12345
Result
------
12345 Seconds in Hours: Minute: Seconds: 3: 25 : 45

prgm5.sh
--------
a=$1
b=$2
c=$3
d=$4
ans=`expr $a  "*"  20 -  $b  "*"  2 + $c / $d`
echo " calculate $a $b $c $d "
echo " the value of "$a*20-$b*2+$c/$d" is $ans"

output
------
[mca1611033@localhost Desktop]$ sh prgm5.sh  2 12 5 2
 calculate 2 12 5 2
 the value of 2*20-12*2 + 5/2 is 18

prgm6.sh
--------
clear
echo "enter a 5 digit number:"
read num
n=1
while [ $n -le 5 ]
do
a=`echo $num | cut -c $n`
echo $a
n=`expr $n + 2`
done

output
------
enter a 5 digit number:
12345
1
3
5

prgm7.sh
--------
echo "Enter 5 digit number :"
read n
s=$n
a=0
r=0
count=0
while [ $n -gt 0 ]
do
d=`expr $n % 10`
a=`expr $r "*" 10`
r=`expr $a + $d`
n=`expr $n / 10`
count=`expr $count + 1`
done
if [ $count = 5 ]
then
echo "Reverse of $s is $r"
else
echo "Not a 5 digit number"
fi

output
------
[mca1611033@localhost Desktop]$ sh prgm7.sh  
Enter 5 digit number :
12345
Reverse of 12345 is 54321

prgm8.sh
-------
echo "Enter 5 digit number :"
read n
s=$n
sum=0
count=0
while [ $n -gt 0 ]
do
d=`expr $n % 10`
sum=`expr $sum + $d`
n=`expr $n / 10`
count=`expr $count + 1`
done
if [ $count = 5 ]
then
echo "sum of 5 digit is $sum"
else
echo "Not a 5 digit number"
fi

output
------
[mca1611033@localhost Desktop]$ sh prgm8.sh  
Enter 5 digit number :
12345 
sum of 5 digit is 15

prgm9.sh
--------
echo "enter the number1:"
read a
echo "enter the number2:"
read b
echo "enter the number3:"
read c
if [ $a -gt $b -a $a -gt $c ]
then 
echo "largest is :$a"
else if [ $b -gt $a -a $b -gt $c ] 
then
echo "largest is :$b"
else
echo "largest is :$c"
fi
fi

output
------
[mca1611033@localhost Desktop]$ sh prgm9.sh  
enter the number1:
1
enter the number2:
2
enter the number3:
3
largest is :3

prgm10.sh
---------
echo "enter the number1:"
read a
echo "enter the number2:"
read b
echo "enter the number3:"
read c
if [ $a -lt $b -a $a -lt $c ]
then 
echo "smallest is :$a"
else if [ $b -lt $a -a $b -lt $c ] 
then
echo "smallest is :$b"
else
echo "smallest is :$c"
fi
fi

output
------
[mca1611033@localhost Desktop]$ sh prgm10.sh  
enter the number1:
2
enter the number2:
3
enter the number3:
4
smallest is :2

prgm11.sh
---------
sum=0
n=0
for i in $*
do
sum=`expr $sum + $i`
i=`expr $i + 1`
done
avg=`expr "scale=2; $sum / $#" | bc`
echo "sum of $* is" $sum  
echo "Average is $avg"

output
------
[mca1611033@localhost Desktop]$ sh prgm11.sh 20 3 20
sum of 20 3 20 is 43
Average is 14.33
 

prgm12.sh
---------
echo "Enter string1:"
read str1
echo "Enter string2:"
read str2
str3=$str1$str2
len=`expr $str3 | wc -c`
len=`expr $len - 1`
echo "the concatenated string is $str3 and length is:$len"

output
------
[mca1611033@localhost Desktop]$ sh prgm12.sh
Enter string1:
hai 
Enter string2:
 manu
the concatenated string is haimanu and length is:7

prgm13.sh
----------
clear
fact=1
i=1
echo -e "enter a number \c"
read n
while [ $i -le $n ]
do
fact=`expr $fact "*" $i`
i=`expr $i + 1`
done
echo "factorial of $n is $fact "

output
------
enter a number 5
factorial of 5 is 120 

prgm14.sh
---------
echo "enter the limit:"
read n
if [ $n -eq 1 ]
then
echo "the fibonacci series is  0"
else
n=`expr $n - 2`
f0=0
f1=1
echo "The fibonacci series is"
echo "$f0"
echo "$f1"
while [ $n -gt 0 ]
do
f=`expr $f0 + $f1`
f0=$f1
f1=$f
echo "$f"
n=`expr $n - 1`
done
fi

output
------
[mca1611033@localhost Desktop]$ sh prgm14.sh
enter the limit:
5
The fibonacci series is
0
1
1
2
3

prgm15.sh
---------
echo -e "Enter the number :\c"
read n
y=`expr $n % 4`
if [ $y -eq 0 ]
then
echo "The year $n is leap year"
else
echo "The year $n is not leap year"
fi

output
------
[mca1611033@localhost Desktop]$ sh prgm15.sh
Enter the number :2016
The year 2016 is leap year

prgm16.sh
---------
clear
echo "enter the number:"
read n
for(( i=0;i<=n;i++))
do for (( j=1;j<=i;j++ ))
do
echo -e "$i \c"
done
echo ""
done

output
------
enter the number:
5

1 
2 2 
3 3 3 
4 4 4 4 
5 5 5 5 5 

prgm17.sh
---------
echo enter the string
read s
echo $s > temp
rvs="$(rev temp)"
echo "reverse string is: $rvs"

output
------
[mca1611033@localhost Desktop]$ sh prgm17.sh
enter the string
hello
reverse string is: olleh

prgm18.sh
---------
echo enter the string
read s
echo $s > temp
rvs="$(rev temp)"
if [ $s = $rvs ]
then
echo "it is palindrome"
else
echo "it is not palindrome"
fi

output
------
[mca1611033@localhost Desktop]$ sh prgm18.sh
enter the string
malayalam
it is palindrome

prgm19.sh
---------
echo "Enter an integer"
read n
if [ `expr $n % 2 ` = 0 ]
then
echo "$n is even"
else
echo "$n is odd"
fi

output
------
[mca1611033@localhost Desktop]$ sh prgm19.sh
Enter an integer
20
20 is even
[mca1611033@localhost Desktop]$ sh prgm19.sh
Enter an integer
5
5 is odd

prgm20.sh
---------
c=0
echo "enter number"
read num
x=$num
echo "enter the digit whose occurence have to be found"
read digit
while [ $num -ne 0 ]
do
rem=`expr $num % 10`
if [ $rem -eq $digit ]
then
c=`expr $c + 1`
fi
num=`expr $num / 10`
done
echo "number of occurence of"digit" is "$c" times"

output
------
[mca1611033@localhost Desktop]$ sh prgm20.sh
enter number
1222335
enter the digit whose occurence have to be found
2
number of occurence ofdigit is 3 times



