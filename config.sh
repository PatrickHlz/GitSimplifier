#Maybe a file where you can config your gall function with your preference

#change the methode you would like to use *1

#if you put in the transfert.sh the config function for calling it for changing some parameters

#example
var test = 1 #change it to 2

#use that for changing a var in another sh file 
echo $var | sed "s/$var/$currVar/g" /./script1.sh > "temp.txt" && mv temp.txt /./script1.sh

ErgoGit
GitSimplifier