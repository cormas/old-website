import os

# Chemin vers le répertoire spécifique où se trouvent les fichiers HTML à modifier
target_dir = '/Users/bommel/old-website/fr/demarch'

# Contenu de la barre latérale
sidebar_html = """
<div id="sidebar">
    <ul>
        <li><a href="./index.htm">Accueil</a></li>
        <li><a href="./WolfSheepPredation.htm">Wolf Sheep Predation</a></li>
        <li><a href="./another-page.htm">Autre Page</a></li>
    </ul>
</div>
"""

# Vérifier si le répertoire cible existe
if not os.path.exists(target_dir):
    print(f"Erreur : Le répertoire {target_dir} n'existe pas.")
else:
    # Parcourir tous les fichiers dans le répertoire cible et ses sous-répertoires
    for root, dirs, files in os.walk(target_dir):
        for file in files:
            if file.endswith('.htm') or file.endswith('.html'):
                file_path = os.path.join(root, file)
                
                # Lire le contenu du fichier
                with open(file_path, 'r', encoding='utf-8') as f:
                    content = f.read()
                    
                # Trouver la position du premier tag ouvert
                first_open_tag_index = content.find('<')
                if first_open_tag_index == -1:
                    print(f"Erreur : Aucun tag ouvert trouvé dans {file_path}. Veuillez vérifier le contenu du fichier.")
                    continue
                
                # Ajouter la barre latérale juste après le premier tag ouvert
                new_content = content[:first_open_tag_index] + sidebar_html + content[first_open_tag_index:]
                
                # Écrire le nouveau contenu dans le fichier
                with open(file_path, 'w', encoding='utf-8') as f:
                    f.write(new_content)
                
                print(f"Mise à jour effectuée pour {file_path}")

    print("Toutes les modifications ont été effectuées.")