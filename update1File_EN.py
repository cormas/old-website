#!/usr/bin/env python3
from bs4 import BeautifulSoup, Comment

def read_file_with_fallback(filepath):
    """Lit un fichier en essayant plusieurs encodages"""
    encodings = ['utf-8', 'iso-8859-1', 'latin1', 'windows-1252']
    for encoding in encodings:
        try:
            with open(filepath, 'r', encoding=encoding) as f:
                return f.read(), encoding
        except UnicodeDecodeError:
            continue
    # Si tous les encodages échouent, utiliser latin1
    with open(filepath, 'r', encoding='latin1') as f:
        return f.read(), 'latin1'

def transform_file(filepath):
    try:
        # Lire le fichier avec gestion des encodages
        content, encoding = read_file_with_fallback(filepath)
        soup = BeautifulSoup(content, 'html.parser')

        # 1. Ajouter la déclaration DOCTYPE si absente
        if not content.strip().startswith('<!DOCTYPE'):
            doctype = BeautifulSoup('<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">', 'html.parser')
            soup.insert(0, doctype)

        # 2. Mettre à jour les métadonnées et le charset
        meta_charset = soup.find('meta', attrs={'http-equiv': 'Content-Type'})
        if not meta_charset:
            meta_charset = soup.new_tag('meta')
            meta_charset.attrs = {
                'http-equiv': 'Content-Type',
                'content': 'text/html; charset=utf-8'
            }
            if not soup.head:
                head = soup.new_tag('head')
                if soup.html:
                    soup.html.insert(0, head)
            else:
                head = soup.head
            head.append(meta_charset)
        else:
            meta_charset['content'] = 'text/html; charset=utf-8'

        # 3. Ajouter le CSS dans une balise style
        existing_style = soup.find('style')
        if existing_style:
            existing_style.decompose()

        style_tag = soup.new_tag('style')
        style_css = """
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
            height: 80px;
            width: 100vw;
            background-color: #FFA500;
            position: relative;
            margin-left: 0;
            left: 0;
            right: 0;
            z-index: 1001;
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
            background-color: #FFCC99;
            padding: 20px;
            z-index: 1000;
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
            background-color: #FFCC99;
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
        """
        style_tag.string = style_css
        if not soup.head:
            head = soup.new_tag('head')
            if soup.html:
                soup.html.insert(0, head)
        else:
            head = soup.head
        head.append(style_tag)

        # 4. Ajouter le bandeau
        header_container = soup.find('div', class_='header-container')
        if not header_container:
            header_container = soup.new_tag('div', attrs={'class': 'header-container'})
            header_container.attrs['style'] = 'width: 100vw; background-color: #FFA500; position: relative; margin-left: 0; left: 0; right: 0; z-index: 1001; height: 80px; display: flex; justify-content: center;'

            header_image_container = soup.new_tag('div', attrs={'class': 'header-image-container'})
            header_image_container.attrs['style'] = 'display: flex; justify-content: center; align-items: center; height: 100%;'

            img_tag = soup.new_tag('img', attrs={
                'src': "../../images/bandeau.jpg",
                'alt': "Description de l'image",
                'style': 'max-width: 100%; max-height: 100%; object-fit: contain;'
            })

            header_image_container.append(img_tag)
            header_container.append(header_image_container)

            if soup.body:
                first_element = next(soup.body.children, None)
                if first_element:
                    first_element.insert_before(header_container)
                else:
                    soup.body.append(header_container)

        # 5. Créer le container principal et réorganiser le contenu
        body_content = soup.body
        if body_content:
            container_div = soup.new_tag('div', attrs={'class': 'container'})

            # Trouver le contenu principal (table)
            main_table = None
            for element in body_content.children:
                if element.name == 'table' and element.get('width') == '100%':
                    main_table = element
                    break

            # Si on trouve une table principale, ajouter le coin avant
            if main_table:
                coin_td = soup.new_tag('td', attrs={
                    'bgcolor': "#FFFFFF",
                    'valign': "top",
                    'width': "25"
                })
                coin_img = soup.new_tag('img', attrs={
                    'src': "../../images/coin_hg.gif",
                    'height': "23",
                    'width': "23"
                })
                coin_td.append(coin_img)

                coin_comment = Comment(' -- -- -- -- -- -- -- Corner -- -- -- -- -- -- -- -- -- -- -- -- ')

                main_table.insert_before(coin_comment)
                main_table.insert_before(coin_td)

            # Déplacer tout le contenu (sauf le bandeau) dans le container
            for element in list(body_content.children):
                if element != header_container:
                    container_div.append(element)

            # Remplacer le contenu du body par le bandeau et le container
            body_content.clear()
            if header_container:
                body_content.append(header_container)
            body_content.append(container_div)

        # 6. Ajouter la sidebar
        sidebar = soup.find('div', id='sidebar')
        if not sidebar:
            sidebar = soup.new_tag('div', attrs={'id': 'sidebar'})
            sidebar.attrs['style'] = 'background-color: #FFCC99; position: fixed; top: 0; left: 0; width: 180px; height: 100%; padding: 20px; z-index: 1000; box-sizing: border-box;'

            for _ in range(9):
                sidebar.append(soup.new_tag('br'))

            ul = soup.new_tag('ul')
            menu_items = [
                ("Home", "../../indexeng.htm"),
                ("Approach", "../demarch/demarch.htm"),
                ("Cormas software", "../outil/outil.htm"),
                ("Models", "../applica/applica.htm"),
                ("Publications", "../bibliog/article.htm"),
                ("Trainings", "../formati/formati.htm"),
                ("Networks", "../reseaux/reseaux.htm")
            ]

            for text, href in menu_items:
                li = soup.new_tag('li')
                a = soup.new_tag('a', href=href)
                a.string = text
                li.append(a)
                ul.append(li)

            sidebar.append(ul)
            body_content.append(sidebar)

        # Sauvegarder les modifications
        with open(filepath, 'w', encoding='utf-8') as f:
            f.write(str(soup))
        print(f"✅ Fichier traité avec succès : {filepath}")

    except Exception as e:
        print(f"❌ Erreur lors du traitement du fichier {filepath} : {str(e)}")

# Chemin du fichier spécifique à traiter
filepath = "/Users/bommel/old-website/en/applica/WolfSheepPredation.htm"
transform_file(filepath)
