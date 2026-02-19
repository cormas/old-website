import os

def check_file_encoding(file_path):
    try:
        with open(file_path, 'r', encoding='ISO-8859-1') as file:
            content = file.read()
        print(f"{file_path} is encoded in ISO-8859-1")
    except UnicodeDecodeError:
        print(f"{file_path} is not encoded in ISO-8859-1")

def check_directory_encoding(directory):
    for root, _, files in os.walk(directory):
        for file in files:
            if file.endswith(('.html', '.htm', '.php')):  # Ajoutez d'autres extensions si nécessaire
                file_path = os.path.join(root, file)
                check_file_encoding(file_path)

# Remplacez 'path/to/your/site' par le chemin vers la racine de votre site web
check_directory_encoding('/Users/bommel/old-website/')