# GitSimplifier

Git simplifier for commit/tag and push faster

This program is working on **Arch Linux**, and other **Linux** supported by a **bashrc**.
This is designed for **Epita** student, but it can be also be used by other Linux users by changing the **origin path**.

## Installation

1. First step : I recommand you to create a repo **PERSONAL_CONFIG** like this `mkdir ~/afs/PERSONAL_CONFIG` and clone the repo with `git clone https://github.com/PatrickHlz/GitSimplifier.git` in the new folder. 

2. Use this command in your **shell**  `transfert` while you are in the git repository.

Your `cat ~/.bashrc` must look like this :
```sh
example bash rc Epita
alias test=ls
#the last line must be added like this, the command before are juste example how a bashrc can look like, it doesn't matter
source ~/afs/PERSONAL_CONFIG/gall.sh
``` 
You must have a `source ~/afs/CONFIG_PERSO/gall.sh` in your `.bashrc`.




