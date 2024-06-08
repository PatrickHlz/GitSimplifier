#!/bin/bash

# Vérifier si un argument est fourni
if [[ -z "$1" ]]; then
    echo "source ~/afs/PERSONAL_CONFIG/GitSimplifier/gall.sh" >> ~/.bashrc
    echo "Process successfully finished"
elif [[ "$1" == "-m" ]]; then 
    echo "source ~/PERSONAL_CONFIG/GitSimplifier/gall.sh" >> ~/.bashrc
    echo "Process successfully finished"
else
    echo "Invalid argument. Usage: $0 [-m]"
fi

# Vérifier si l'ajout de la commande dans .bashrc a réussi
if [[ $? -ne 0 ]]; then
    echo "Failed to update ~/.bashrc. Please check your permissions and try again."
    exit 1
fi

exit 0
