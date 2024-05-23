# GitSimplifier

**Git Simplifier** for Faster Commit/Tag and Push

This program works on **Arch Linux** and other **Linux distributions** that support **bashrc**.
It is designed for **Epita** students but can also be used by other Linux users by changing the **origin path**.

## Installation

+ I recommend you create a repo named **PERSONAL_CONFIG** like this: `mkdir ~/afs/PERSONAL_CONFIG` and **clone** the repo with `git clone https://github.com/PatrickHlz/GitSimplifier.git` in the new folder.

+ Use this **command** in your **shell**: `transfert.sh` while you are in the **git repository**.

Your `cat ~/.bashrc` must look like this :
```sh
# Example of a .bashrc file
export PATH=$PATH:~/afs/PERSONAL_CONFIG
alias mygit="~/afs/PERSONAL_CONFIG/git-simplifier.sh"

# Important line
source ~/afs/PERSONAL_CONFIG/GitSimplifier/gall.sh
``` 
Make sure you have `source ~/afs/PERSONAL_CONFIG/GitSimplifier/gall.sh` in your `.bashrc`.

## Guideline

This script is a tool that helps you to go faster while you are committing and pushing your homework. It is open source, so you are free to upgrade it and contribute to make it more efficient for everyone.

`gall` *(git all)* is the main function that is called to always git add . in your repository.

+ `gall` without an argument will commit and push with a random message. (not recommended; you must follow a commit convention, use it when there is a rush)

+ `gall "first argument"`  with one argument will commit and push with the message you wanted.

+ `gall "first argument" "second argument"` will commit with your first argument, then create a tag with the second argument. **Use a correct pattern for the tag message: archi- or submit-.**

## Examples

You can use it like this :

```sh
/User$ gall
# Random commit with a message like "XsffgezsdqAs" (12 letters long)

/User$ gall "Initialisation"
# Commit with the message "Initialisation"

/User$ gall "Fundamentals expert" "archi-0"
# Commit with the message "Fundamentals expert" and create a tag "archi-0" that will be directly pushed on the intranet
```
