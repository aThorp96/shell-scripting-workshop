%Shell Scripting for Computer Programmers
%Andrew Thorp
%Linux@App

# What is shell scripting?
 * BASH pipes
 * Environment variable
 * File manipulation


# Why use shell scripting
 * Learning the language
 * Not having to learn the language
 * Avoiding large overhead/libraries
 * Very easy to write
 * Interract natively with OS environment

# Documentation / References
Documentation can be found my typing:

 `$man <program_name>`
 
# Review
## Pipes
 * `cmd1 | cmd2` takes output of `cmd1` and feeds it as input to `cmd2`
 * `cmd1 >> file` takes the output of `cmd1` and appends `file` with the contents
 * `cmd2 > file` takes the output of `cmd1` and overwrites `file` with the contents
 * `cmd3 < file` takes the contents of `file` and extracts them as input to `cmd3`
 
# Basic program

 * HelloMe.sh

``` bash
#!/bin/bash
# This is a comment!
echo "Hello $USER!" # This is also a comment
```

# Anatomy

 `echo "Hello $USER!"`

The echo command

# Anatomy (aside)
What is the difference here?
`echo "Hello $USER!"`

        vs
`echo 'Hello $USER!'`

# Anatomy

 `# This is a comment`

Golly Gee I wonder what this is

# Usage?

Running the script

`$ ./helloMe.sh`

# Usage

Running the script:

run `$chmod +x /path/to/script`

run `$./helloMe.sh`

# Fundamentals: Variables
## Variables

 * prequalMeme.sh
 
 ```bash
 # variable definition
 message="hello there.\n"
 name="genreal kenobi..."
 #variable usage
 echo "$message $name"
 ```
 
# Fundamentals: Arguments
## Arguments

 * arguments.sh
 
 ```bash
 # Called with argScript.sh <firstName> <lastName>
 FNAME=$1
 LNAME;$2
 STR1="Hello $1 $2. "
 STR2="You called this script with $# arguments" 
 STR3="The arguments were: $@"
 echo $STR1 $STR2
 echo $STR3
 ```

# Fundamentals: Loops
## FOR loop ##

* friendlyList.sh
 
```bash
for i in $( ls ); do
    echo "item: $i"
done
```
    
# Fundamentals: Loops
## FOR loop ##
 
```bash
for i in *; do
    echo "item: $i"
done
```
    
# Fundamentals: Loops
## FOR loop ##

```bash
for i in `seq 1 10; do
    echo "item: $i"
done
``` 
    
# Fundamentals: Loops
## WHILE loop ##
 
``` bash
echo "Press Ctrl-C to escape"
while read f; do
    echo $f
done
```
 * repeater.sh
    
# Fundamentals: Conditionals
## Testing ##
 
``` bash
if [ "myString" = "myString" ]; then
    echo true
elif [ 5 -lt 5 ]
    echo "This should not be reached"
else
    echo "If you're here something is very wrong"
fi
```

Notice the spaces around the brackets

# Fundamentals: Tools

 * `grep` - find
 * `tr` - find and replace characters
 * `echo` - print a value
 * `cat`  - print the contents of a file
 
# grep
 * Used to pattern match
 * Accepts regular expressions
 * Should not be used like `cat myFile | grep "pattern"`.
 * General syntax: `grep "pattern / expression" <file/files>`
 
# tr
 * Replaces characters with other characters (called "sets")
 * Usefull for manipulating text files
 * Basic syntax: (replaces each space witha  newline) `cat myFile | tr ' ' '\n'`

# echo 
 * Prints input to standard out
 * Used for piping variables into commands
 * Basic syntax: `echo "Hello World!"`

# cat
 * Stands for concatinate 
 * Outputs contents of file to stnadard out.
 * Notoriously overused
 * Basic Syntax: `cat myFile`
