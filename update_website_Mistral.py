#!/usr/bin/env python3
import os
from bs4 import BeautifulSoup
import chardet  # Pour détecter l'encodage des fichiers

# Répertoire contenant les fichiers .htm
input_dir = "/Users/bommel/old-website/fr/applica/"

# Modèle de sidebar et bandeau à insérer
template_sidebar = """
<div id="sidebar">
<br><br><br><br><br><br><br><br><br>
<ul>
<li><a href="../../index.htm">Accueil</a></li>
<li><a href="../demarch/demarch.htm">Approche</a></li>
<li><a href="../outil/outil.htm">Cormas soft</a></li>
<li><a href="../applica/applica.htm">Modèles</a></li>
<li><a href="../bibliog/article.htm">Publications</a></li>
<li><a href="../formati/formati.htm">Cours</a></li>
<li><a href="../reseaux/reseaux.htm">Réseaux</a></li>
</ul>
</div>
"""

template_header = """
<div class="header-container">
  <div class="header-image-container">
    <img src="../../images/bandeau.jpg" alt="Description de l'image">
  </div>
</div>
"""

template_css = """
<style>
body, html {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    overflow-x: hidden;
}
.container {
    display: flex;
    flex-direction: column;
    margin-left: 180px;
    width: calc(100% - 180px);
}
.header-container {
    position: relative;
    background-color: #FFA500;
    height: 80px;
    width: 100vw;
    margin-left: -180px;
    z-index: 1001; /* Au-dessus de la sidebar */
    display: flex;
    justify-content: center;
}
.header-image-container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100%;
}
.header-image-container img {
    max-width: 100%;
    max-height: 100%;
    object-fit: contain;
}
#sidebar {
    position: fixed;
    top: 0;
    left: 0;
    width: 180px;
    height: 100%;
    background-color: #FFA500;
    padding: 20px;
    z-index: 1000; /* En dessous du bandeau */
    box-sizing: border-box;
}
#sidebar ul {
    list-style-type: disc;
    margin-left: 20px;
    padding: 0;
}
#sidebar ul li a {
    display: block;
    text-align: left;
    color: #333;
    background-color: #FFA500;
    padding: 10px 0;
}
#sidebar ul li a:hover {
    background-color: #C86D12;
}
table {
    width: 100%;
    margin-left: 20px;
}
tbody td {
    padding-left: 30px;
}
tbody td.content-cell {
    padding-left: 80px;
}
</style>
"""

def detect_encoding(filepath):
    """Détecte l'encodage d'un fichier."""
    with open(filepath, 'rb') as f:
        raw_data = f.read(10000)
        result = chardet.detect(raw_data)
        return result['encoding'] if result['confidence'] > 0.7 else 'latin-1'

def update_file(filepath):
    try:
        # Détecter l'encodage du fichier
        encoding = detect_encoding(filepath)
        with open(filepath, 'r', encoding=encoding) as f:
            soup = BeautifulSoup(f, 'html.parser')

        # Vérifier si le body existe
        if not soup.body:
            print(f"⚠️ Fichier sans balise <body> (ignoré) : {filepath}")
            return

        # Mettre à jour ou ajouter le CSS
        if not soup.find('style'):
            head = soup.head if soup.head else soup.new_tag('head')
            style_tag = soup.new_tag('style')
            style_tag.string = template_css
            head.append(style_tag)
            if not soup.head:
                soup.html.insert(0, head)
        else:
            soup.find('style').replace_with(BeautifulSoup(template_css, 'html.parser'))

        # Ajouter le conteneur principal s'il n'existe pas
        if not soup.find('div', class_='container'):
            body = soup.body
            container = soup.new_tag('div', **{'class': 'container'})
            for child in list(body.children):
                container.append(child)
            body.clear()
            body.append(container)

        # Ajouter le header s'il n'existe pas
        if not soup.find('div', class_='header-container'):
            body = soup.body
            header = BeautifulSoup(template_header, 'html.parser')
            body.insert(0, header)

        # Ajouter la sidebar s'il n'existe pas
        if not soup.find('div', id='sidebar'):
            body = soup.body
            sidebar = BeautifulSoup(template_sidebar, 'html.parser')
            body.append(sidebar)

        # Ajouter la classe "content-cell" aux <td> dans <tbody> pour le décalage
        tbody = soup.find('tbody')
        if tbody:
            for td in tbody.find_all('td'):
                if 'content-cell' not in td.get('class', []):
                    td['class'] = td.get('class', []) + ['content-cell']

        # Sauvegarder les modifications (en utf-8)
        with open(filepath, 'w', encoding='utf-8') as f:
            f.write(str(soup))
        print(f"✅ Fichier traité avec succès : {filepath}")

    except Exception as e:
        print(f"❌ Erreur lors du traitement du fichier {filepath} : {str(e)}")

def main():
    filename = "cienaga.htm"
    filepath = os.path.join(input_dir, filename)
    update_file(filepath)
    # Appliquer à tous les fichiers .htm du répertoire
    #for filename in os.listdir(input_dir):
     #   if filename.endswith('.htm'):
      #      filepath = os.path.join(input_dir, filename)
       #     update_file(filepath)

if __name__ == "__main__":
    main()