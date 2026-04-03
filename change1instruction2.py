#!/usr/bin/env python3
import os
from bs4 import BeautifulSoup

# Répertoire de base
base_dir = "/Users/bommel/old-website/en"

def update_index_link(filepath):
    try:
        # Lire le fichier avec gestion des encodages
        try:
            with open(filepath, 'r', encoding='utf-8') as f:
                content = f.read()
        except UnicodeDecodeError:
            with open(filepath, 'r', encoding='latin1') as f:
                content = f.read()

        soup = BeautifulSoup(content, 'html.parser')

        # Trouver la sidebar
        sidebar = soup.find('div', id='sidebar')
        if sidebar:
            # Trouver la liste ul dans la sidebar
            ul = sidebar.find('ul')
            if ul:
                # Trouver le lien "Home"
                for li in ul.find_all('li'):
                    a = li.find('a')
                    if a and a.string and 'Home' in a.string and a.get('href') == '../../index.htm':
                        a['href'] = '../../indexeng.htm'
                        print(f"✅ Lien modifié dans : {filepath}")

                        # Sauvegarder les modifications
                        with open(filepath, 'w', encoding='utf-8') as f:
                            f.write(str(soup))
                        return

        # Si on n'a pas trouvé dans la sidebar, chercher dans tout le document
        modified = False
        for a in soup.find_all('a', href="../../index.htm"):
            if a.string and 'Home' in a.string:
                a['href'] = '../../indexeng.htm'
                modified = True

        if modified:
            with open(filepath, 'w', encoding='utf-8') as f:
                f.write(str(soup))
            print(f"✅ Lien modifié dans : {filepath}")
        else:
            print(f"ℹ️ Aucun lien Home→index.htm trouvé dans : {filepath}")

    except Exception as e:
        print(f"❌ Erreur lors du traitement du fichier {filepath} : {str(e)}")

def main():
    # Parcourir récursivement tous les sous-répertoires
    for root, dirs, files in os.walk(base_dir):
        for filename in files:
            # Vérifier si le fichier est un fichier HTML
            if filename.lower().endswith(('.htm', '.html')):
                filepath = os.path.join(root, filename)
                update_index_link(filepath)

if __name__ == "__main__":
    main()