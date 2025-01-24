#!/bin/bash

# Fonction pour compter le nombre de fichiers dans le répertoire actuel
count_files() {
  ls -1 | wc -l
}

# Nombre de fichiers dans le répertoire actuel
correct_count=$(count_files)

# Boucle pour demander à l'utilisateur de deviner
while true; do
  echo "Combien de fichiers se trouvent dans le répertoire actuel ? Devinez :"
  read user_guess

  if [[ $user_guess -lt $correct_count ]]; then
    echo "Votre estimation est trop basse. Essayez encore !"
  elif [[ $user_guess -gt $correct_count ]]; then
    echo "Votre estimation est trop élevée. Essayez encore !"
  else
    echo "Félicitations ! Vous avez deviné le bon nombre de fichiers."
    break
  fi
done
