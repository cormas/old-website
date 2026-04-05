#!/usr/bin/env python3
import os
from bs4 import BeautifulSoup

# Répertoire de base
base_dir = "/Users/bommel/old-website/fr"

def update_h1_tags(filepath):
    try:
        # Lire le fichier avec gestion des encodages
        try:
            with open(filepath, 'r', encoding='utf-8') as f:
                content = f.read()
        except UnicodeDecodeError:
            with open(filepath, 'r', encoding='latin1') as f:
                content = f.read()

        soup = BeautifulSoup(content, 'html.parser')

        # Trouver toutes les balises h1
        h1_tags = soup.find_all('h1')
        modified = False

        for h1 in h1_tags:
            # Créer une nouvelle balise h1 avec les attributs demandés
            new_h1 = soup.new_tag('h1', align="right")

            # Créer la balise font
            font_tag = soup.new_tag('font', color="#777777")

            # Déplacer tout le contenu original dans la balise font
            for child in h1.children:
                font_tag.append(child)

            # Ajouter la balise font et le br à la nouvelle h1
            new_h1.append(font_tag)
            new_h1.append(soup.new_tag('br'))

            # Remplacer l'ancienne h1 par la nouvelle
            h1.replace_with(new_h1)
            modified = True

        if modified:
            with open(filepath, 'w', encoding='utf-8') as f:
                f.write(str(soup))
            print(f"✅ Fichier modifié avec succès : {filepath}")
        else:
            print(f"ℹ️ Aucun H1 trouvé dans : {filepath}")

    except Exception as e:
        print(f"❌ Erreur lors du traitement du fichier {filepath} : {str(e)}")

def main():
    # Parcourir récursivement tous les sous-répertoires
    for root, dirs, files in os.walk(base_dir):
        for filename in files:
            # Vérifier si le fichier est un fichier HTML
            if filename.lower().endswith(('.htm', '.html')):
                filepath = os.path.join(root, filename)
                update_h1_tags(filepath)

if __name__ == "__main__":
    main()