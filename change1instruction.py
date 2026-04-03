#!/usr/bin/env python3
import os
from bs4 import BeautifulSoup

# Répertoire de base
base_dir = "/Users/bommel/old-website/fr"

def update_cours_to_formations(filepath):
    try:
        # Lire le fichier avec gestion des encodages
        try:
            with open(filepath, 'r', encoding='utf-8') as f:
                content = f.read()
        except UnicodeDecodeError:
            with open(filepath, 'r', encoding='latin1') as f:
                content = f.read()

        soup = BeautifulSoup(content, 'html.parser')

        # Trouver toutes les balises <a> avec href="../formati/formati.htm" et texte "Cours"
        for link in soup.find_all('a', href="../formati/formati.htm"):
            if link.string and 'Cours' in link.string:
                link.string = link.string.replace('Cours', 'Formations')

        # Sauvegarder les modifications
        with open(filepath, 'w', encoding='utf-8') as f:
            f.write(str(soup))
        print(f"✅ Fichier traité avec succès : {filepath}")

    except Exception as e:
        print(f"❌ Erreur lors du traitement du fichier {filepath} : {str(e)}")

def main():
    # Parcourir récursivement tous les sous-répertoires
    for root, dirs, files in os.walk(base_dir):
        for filename in files:
            # Vérifier si le fichier est un fichier HTML (.htm ou .html)
            if filename.lower().endswith(('.htm', '.html')):
                filepath = os.path.join(root, filename)
                update_cours_to_formations(filepath)

if __name__ == "__main__":
    main()