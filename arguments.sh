#! /bin/bash
#Called with `argScript.sh <firstName> <lastName> [other arguments]
FNAME=$1
LNAME=$2
STR1="Hello $FNAME $LNAME. "
STR2="You called this script with $# arguments."
STR3="Those arguments were $@"
echo $STR1 $STR2
echo $STR3
