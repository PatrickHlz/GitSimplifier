# GitSimplifier

Git simplifier for commit/tag and push faster

This program is working on **Arch Linux**, and other **Linux** supported by a **bashrc**.
This is designed for **Epita** student, but it can be also be used by other Linux users by changing the **origin path**.

## Installation

+ First step : I recommand you to create a repo **PERSONAL_CONFIG** like this `mkdir ~/afs/PERSONAL_CONFIG` and clone the repo with `git clone https://github.com/PatrickHlz/GitSimplifier.git` in the new folder. 

+ Use this command in your **shell** `transfert.sh` while you are in the git repository.

Your `cat ~/.bashrc` must look like this :
```sh
example bash rc Epita
alias test=ls
#the last line must be added like this, the command before are juste example how a bashrc can look like, it doesn't matter
source ~/afs/PERSONAL_CONFIG/gall.sh
``` 
You must have a `source ~/afs/PERSONAL_CONFIG/GitSimplifier/gall.sh` in your `.bashrc`.

## Guideline

This script is a tool that helps you to go faster while you are committing and pushing your homework. It is opensource so you are free to upgrade it, and **contribuate** for making it more efficient for everyone.

`gall` *(git all)* is the main function that is called that will always `git add .` in your repository.

+ `gall` without argument will commit and push with a random message. (not recommanded, you must follow a commit convetion, use it when there is a rush)

+ `gall "first argument"` with one argument will commit and push with the message you wanted. 

+ `gall "first argument" "second argument"` will commit with your first argument then create a tag with the second argument. **Use a correct pattern for the tag message : archi-. or submit-.**

## Examples

You can use it like this :

```sh
/User$ gall
#random commit "XsffgezsdqAs" 12 letter long message

/User$ gall "Initialisation"
#commit "Initialisation" 

/User$ gall "Fundamentals expert" "archi-0"
#commit "Fundamentals expert" and create a tag "archi-0" that will be directly pushed on the intranet
```
