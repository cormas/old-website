import os

def convert_file(file_path):
    try:
        with open(file_path, 'r', encoding='utf-8') as file:
            content = file.read()
        with open(file_path, 'w', encoding='iso-8859-1') as file:
            file.write(content)
        print(f"Converted {file_path}")
    except Exception as e:
        print(f"Error converting {file_path}: {e}")

def convert_directory(directory):
    for root, _, files in os.walk(directory):
        for file in files:
            file_path = os.path.join(root, file)
            if file_path.endswith('.htm') or file_path.endswith('.html'):
                convert_file(file_path)

if __name__ == "__main__":
    directory_to_convert = "/Users/bommel/old-website/"
    convert_directory(directory_to_convert)