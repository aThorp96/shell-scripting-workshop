%Shell Scripting for Computer Programmers
%Andrew Thorp
%Linux@App

# What is shell scripting?
 * BASH pipes


# Why use shell scripting
 * Learning the language
 * Not having to learn the language
 * Avoiding large overhead/libraries
 * Very easy to write

# Documentation / References
 `$man <program_name>`

# Basic program
 * Hello World
 * `HelloMe.sh`

# Basic program
 * Hello Me
``` bash
#!/bin/bash
# This is a comment!
echo "Hello $USER!"
```

# Anatomy
> `#!/bin/bash`
 
The "Shabang": path to binary

# Anatomy
> `echo "Hello $USER!"`

The echo command

# Anatomy (aside)
`echo "Hello $USER!`

        vs
`echo 'Hello $USER!`

# Anatomy
> `# This is a comment`

Golly I wonder what this is

# Anatomy
``` bash
#!/bin/bash
# This is a comment!
echo "Hello World!" # This is also a comment
```

# Usage
>`$ ./helloMe.sh
