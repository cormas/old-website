#!/usr/bin/env python3
import os
import re
from bs4 import BeautifulSoup
from unicodedata import normalize

# Répertoire contenant les fichiers .htm
input_dir = "/Users/bommel/old-website/fr/applica/"

# Dictionnaire des corrections courantes
corrections = {
    r'lautor': "l'auteur",
    r'lauteur': "l'auteur",
    r'lequip': "l'équip",
    r'lequipe': "l'équipe",
    r'ca\s': "ça ",
    r'ca,': "ça,",
    r'ca\.': "ça.",
    r'ca!': "ça!",
    r'ca\?': "ça?",
    r'ca:': "ça:",
    r'cest': "c'est",
    r'pres\s': "près ",
    r'pres,': "près,",
    r'pres\.': "près.",
    r'pres!': "près!",
    r'pres\?': "près?",
    r'pres:': "près:",
    r'ou\s': "où ",  # Attention: "ou" peut aussi être correct
    r'a\s': "à ",
    r'e\s': "é ",
    r'e\([^a-z]\)': "è\\1",  # Pour les "è" suivis de ponctuation
    r'c\'est': "c'est",
    r'n\'est': "n'est",
    r'l\'est': "l'est",
    r'qu\'il': "qu'il",
    r'qu\'elle': "qu'elle",
    r'j\'ai': "j'ai",
    r'jaime': "j'aime",
    r'jaimes': "j'aimes",
    r'jaiment': "j'aiment",
}

def corriger_texte(texte):
    """Corrige les erreurs d'encodage et les caractères spéciaux dans le texte"""
    # D'abord, normaliser les caractères
    texte = normalize('NFKC', texte)

    # Appliquer les corrections spécifiques
    for motif, remplacement in corrections.items():
        texte = re.sub(motif, remplacement, texte)

    # Corriger les accents manquants
    texte = re.sub(r"a'", "à", texte)
    texte = re.sub(r"e'", "é", texte)
    texte = re.sub(r'e"', "è", texte)
    texte = re.sub(r'e\^', "ê", texte)
    texte = re.sub(r'u\'', "ù", texte)
    texte = re.sub(r'c,', "ç", texte)

    # Autres corrections courantes
    texte = re.sub(r"lauteur", "l'auteur", texte)
    texte = re.sub(r"lequip", "l'équip", texte)
    texte = re.sub(r"(\s)a(\s)", r"\1à\2", texte)  # Espace + a + espace → espace + à + espace
    texte = re.sub(r"(\s)e(\s)", r"\1é\2", texte)  # Espace + e + espace → espace + é + espace
    texte = re.sub(r"(\W)a(\W)", r"\1à\2", texte)  # a entouré de non-mots → à
    texte = re.sub(r"(\W)e(\W)", r"\1é\2", texte)  # e entouré de non-mots → é

    return texte

def update_file(filepath):
    try:
        with open(filepath, 'r', encoding='utf-8') as f:
            content = f.read()

        soup = BeautifulSoup(content, 'html.parser')

        # Corriger le texte dans toutes les balises qui contiennent du texte
        for element in soup.find_all(text=True):
            if element.parent.name not in ['script', 'style', 'head', 'title', 'meta']:
                parent = element.parent
                if parent.name not in ['script', 'style', 'head', 'title', 'meta']:
                    corrected_text = corriger_texte(str(element))
                    if corrected_text != str(element):
                        element.replace_with(corrected_text)

        # Sauvegarder les modifications
        with open(filepath, 'w', encoding='utf-8') as f:
            f.write(str(soup))
        print(f"✅ Fichier traité avec succès : {filepath}")

    except Exception as e:
        print(f"❌ Erreur lors du traitement du fichier {filepath} : {str(e)}")

def main():
    # Appliquer à tous les fichiers .htm du répertoire
    for filename in os.listdir(input_dir):
        if filename.endswith('.htm'):
            filepath = os.path.join(input_dir, filename)
            update_file(filepath)

if __name__ == "__main__":
    main()