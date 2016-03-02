#!/usr/bin/env bash
#For mac os x, we use this header.
#For normal linux, use #!/usr/bin/bash

#echo: prints the following string or variable value. 
#echo -n: prints the string in the same line. 

echo "Hello World!"

#Variable: there is only one vairable type, string. 
#Declaration: a="cat", no space in between.
#$ to retrieve the value of the variable.
#We can use a variable without declaring.

echo "Please enter your name: "
read name
echo "Hello $name"

#Quoting: 
#single quote: no value substitution.
#double quoting: support three operators: $, \(escape), ``(Back quotes).
#$ for value substitution
#\ for escape letter, eg. /$ means $
#`` includes shell cmd in between, the execute output will be replaced.

a="Apple pie"
b="$a"
echo $b
c="\$a = $a"
echo $c
d="`ls -l`"
echo $d

#String operations:
#length: ${#a}
#substring: ${a:pos:len}
#replace: ${a/from/to}

a="Apple"
echo "Then length of \"$a\" is ${#a}."
a="Pine Apple"
echo "$a substring 5:5 is ${a:5:5}."
a="Apple pie"
from="pie"
to="juice"
echo "$a after replace \"$from\" by \"$to\" becomes ${a/$from/$to}."
