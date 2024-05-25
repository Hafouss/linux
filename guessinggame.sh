#!/bin/bash

# Fonction pour obtenir le nombre de fichiers dans le répertoire courant
function get_file_count {
  echo $(ls -1 | wc -l)
}

# Nombre de fichiers dans le répertoire courant
file_count=$(get_file_count)

# Boucle de devinette
while true; do
  echo "Combien de fichiers se trouvent dans le répertoire actuel ?"
  read guess
  if [[ $guess -lt $file_count ]]; then
    echo "Trop bas."
  elif [[ $guess -gt $file_count ]]; then
    echo "Trop haut."
  else
    echo "Félicitations ! Vous avez deviné correctement."
    break
  fi
done
