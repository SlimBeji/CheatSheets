#!/bin/bash
#=========Reading inputs============
echo Print work directory `pwd`
echo -e "escaping line 1\nescaping line 2"

prenom=""
nom=""
while [ -z $prenom ] || [ -z $nom ]
do
 read -p 'Entrer prenom+espace+nom ' prenom nom
done

echo "Votre prenom est ${prenom}"
echo "Votre nom est ${nom}"
read -p "Entrer un login de 8 caracteres " -n 8 pseudo
echo -e "\nVotre pseudo est ${pseudo}"
[ -z ${prenom} ] && echo You didnt enter a first name ||
echo You entered a first name

#=========Arithmetic============
num1=17
num2=5
let "a=$num1/$num2"
b=$(($num1 % $num2))
#b=$(expr $num1 % $num2)
echo "$num1 = $num2 * $a + $b"

case $num1 in
  "17" | "16" | "15")
    echo is 15, 16 or 17;;
  "14")
    echo is 14;;
  "*")
    echo inferior to 14;;
esac

#========Test if integer==========
#There is also the elif statement like if
read -p "Entrer un entier " myint
test $myint -eq 0 2>/dev/null
if [ $? -eq 2 ] || [ "$myint" = "" ] ; then
echo "You didnt enter an integer"
else
echo "You entered an integer"
fi

#=======Test Shift==============
echo "Execution of $0 with $# variables"
echo "Variable 1 $1"
params[0]=$1
#shift shifts variable position
shift
echo "Variable 2 $1"
params[1]=$1
echo ${params[*]}

for param in ${params[*]}
do
echo $param
done

#=========Factorial function=======
function factorial
{

n=$1
printf "%d\n" $n > /dev/null 2>&1
isInteger=$?

if [ -z $n ] ; then
  echo error: no parameters
  return
elif [ $isInteger -ne 0 ] ; then
  echo error: not an integer
  return
elif [ $n -le 1 ] ; then
  echo 1
else
    next=`expr $n - 1`
    previous=`factorial $next`
    result=`expr $previous \* $n`
    echo $result
fi
}
