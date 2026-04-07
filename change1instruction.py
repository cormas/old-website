#!/usr/bin/env python3
import os
import re
from bs4 import BeautifulSoup

# Répertoire de base
base_dir = "/Users/bommel/old-website"

def update_image_paths(filepath):
    try:
        # Lire le fichier avec gestion des encodages
        try:
            with open(filepath, 'r', encoding='utf-8') as f:
                content = f.read()
        except UnicodeDecodeError:
            with open(filepath, 'r', encoding='latin1') as f:
                content = f.read()

        # Utiliser une expression régulière pour remplacer directement dans le contenu
        # Cela permet de capturer tous les cas, même ceux qui ne sont pas correctement parsés par BeautifulSoup
        new_content = re.sub(r'src="/images/', 'src="../../images/', content)

        # Vérifier si des remplacements ont été effectués
        if new_content != content:
            with open(filepath, 'w', encoding='utf-8') as f:
                f.write(new_content)
            print(f"✅ Fichier modifié avec succès : {filepath}")
        else:
            print(f"ℹ️ Aucun chemin d'image à modifier dans : {filepath}")

    except Exception as e:
        print(f"❌ Erreur lors du traitement du fichier {filepath} : {str(e)}")

def main():
    # Parcourir récursivement tous les sous-répertoires
    for root, dirs, files in os.walk(base_dir):
        for filename in files:
            # Vérifier si le fichier est un fichier HTML
            if filename.lower().endswith(('.htm', '.html')):
                filepath = os.path.join(root, filename)
                update_image_paths(filepath)

if __name__ == "__main__":
    main()