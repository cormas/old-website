#!/usr/bin/env python3
import os
from bs4 import BeautifulSoup

# Répertoire contenant les fichiers .htm
input_dir = "/Users/bommel/old-website/fr/applica/"

def update_file(filepath):
    try:
        with open(filepath, 'r', encoding='utf-8') as f:
            content = f.read()

        soup = BeautifulSoup(content, 'html.parser')

        # 1. Mettre à jour le CSS pour la sidebar
        style_tag = soup.find('style')
        if style_tag:
            style_content = style_tag.string
            if style_content:
                style_content = style_content.replace('background-color: #FFA500;', 'background-color: #FFCC99;')
                style_tag.string = style_content

        # 2. Mettre à jour la sidebar
        sidebar = soup.find('div', id='sidebar')
        if sidebar:
            sidebar['style'] = 'background-color: #FFCC99; position: fixed; top: 0; left: 0; width: 180px; height: 100%; padding: 20px; z-index: 1000; box-sizing: border-box;'

        # 3. Ajouter le bandeau
        if not soup.find('div', class_='header-container'):
            header_container = soup.new_tag('div', **{'class': 'header-container'})
            header_image_container = soup.new_tag('div', **{'class': 'header-image-container'})
            img_tag = soup.new_tag('img', src="../../images/bandeau.jpg", alt="Description de l'image")
            header_image_container.append(img_tag)
            header_container.append(header_image_container)
            if soup.body:
                soup.body.insert(0, header_container)

        # 4. Ajouter la balise <td> pour le coin
        container_div = soup.find('div', class_='container')
        if container_div:
            # Créer la balise <td> pour le coin
            coin_td = soup.new_tag('td', bgcolor="#FFFFFF", valign="top", width="25")
            coin_img = soup.new_tag('img', src="../../images/coin_hg.gif", height="23", width="23")
            coin_td.append(coin_img)

            # Ajouter un commentaire avant la balise <td>
            coin_comment = soup.new_tag('!--')
            coin_comment.string = ' -- -- -- -- -- -- -- Corner -- -- -- -- -- -- -- -- -- -- -- '

            # Insérer la balise <td> après l'ouverture de <div class="container">
            first_child = next(container_div.children, None)
            if first_child:
                first_child.insert_before(coin_comment)
                first_child.insert_before(coin_td)
            else:
                container_div.append(coin_comment)
                container_div.append(coin_td)

        # Sauvegarder les modifications
        with open(filepath, 'w', encoding='utf-8') as f:
            f.write(str(soup))
        print(f"✅ Fichier traité avec succès : {filepath}")

    except Exception as e:
        print(f"❌ Erreur lors du traitement du fichier {filepath} : {str(e)}")

def main():
    filename = "varzeaViva.htm"
    filepath = os.path.join(input_dir, filename)
    update_file(filepath)

    # Appliquer à tous les fichiers .htm du répertoire
    #for filename in os.listdir(input_dir):
     #   if filename.endswith('.htm'):
      #      filepath = os.path.join(input_dir, filename)
       #     update_file(filepath)

if __name__ == "__main__":
    main()