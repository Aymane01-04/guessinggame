# Fichier makefile

# Nom du projet
PROJECT_NAME = guessinggame

# Date et heure actuelles
DATE = $(shell date)

# Nombre de lignes de code dans guessinggame.sh
LINES = $(shell wc -l < guessinggame.sh)

# Générer README.md
README.md:
    @echo "# Projet : $(PROJECT_NAME)" > README.md
    @echo "" >> README.md
    @echo "Date et heure de génération : $(DATE)" >> README.md
    @echo "" >> README.md
    @echo "Nombre de lignes de code dans guessinggame.sh : $(LINES)" >> README.md

# Commande par défaut
all: README.md
