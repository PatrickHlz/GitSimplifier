#!/bin/bash

# Ajouter la commande au fichier .bashrc
echo "source ~/PERSONAL_CONFIG/GitSimplifier/gall.sh" >> ~/.bashrc
echo "Process successfully finished"

# Vérifier si l'ajout de la commande dans .bashrc a réussi
if ! grep -q "source ~/afs/PERSONAL_CONFIG/GitSimplifier/gall.sh" ~/.bashrc; then
    echo "Failed to update ~/.bashrc. Please check your permissions and try again."
    exit 1
fi

exit 0
