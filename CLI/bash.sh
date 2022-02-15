#!/bin/bash
# indicate to the file witch bash use to execute

# add execute rights to file to run it
chmod +x file

# export the variable and make available for scripts
export MYVAR

# . source the script and make the variables exported to bash
. ./file.sh

# option: -e backlash interpolation , n remove newline at the end
echo -en "line"

# echo the variable message; use "$message" to keep line breaks
echo $message

# replace in var str target by replace
echo "${str/$target/$replace}"

# -t for input time waiting 10s, -s for secert, -p for no newline
read -p -t 10 -s myvar

# Liste de toute les variables d'environnement
env

# $? last execution, $0 namefile, $# remaining params, $1 param 1
$? $0 $# $1

# $2 become $1; $3 become $2 etc...
shift

# test if var is int if $? -eq 0. Use /dev/null for random redirection
echo $var | grep "[^0-9]" > /dev/null 2>&1

# int: -eq equal -lt lower, -ge greater or equal, -ne not equal
[ -eq -lt -gt -ge -le -ne]

# str: = equal, != not equal, -n not empty, -z is empty, ! Inverse
[ = != -n -z !]

# file: f is file, d is directory, e exist, L is link, nt newer, ot older
[ -f -d -e -L -nt -ot -r -x -w ]

# generate a sequence of 1 to 15, useful for loops
seq 1 15

# generate sequence of letters
echo {a..z}

# evaluate the expression 2 * 3
expr 2 \* 3

# evaluate the expression and affect result to $a
let "a=5/2"

# evaluate the expression and affect result to $a
a=$((5% 2))

# remove text from file name: example extension
basename file text

# print 5 as decimal
printf "%d\n" 5
