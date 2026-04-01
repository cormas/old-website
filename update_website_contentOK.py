
# Define the source and destination file paths
src_file_path = '/Users/bommel/old-website/fr/applica/demo_aggregates.htm'
wolf_sheep_predation_path = '/Users/bommel/old-website/fr/applica/WolfSheepPredation2.htm'
dst_file_path = src_file_path.replace('demo_aggregates.htm', 'demo_aggregates_updated.htm')

# Read WolfSheepPredation2 content
with open(wolf_sheep_predation_path, 'r', encoding='utf-8') as wolf_sheep_predation_file:
    wolf_sheep_predation_content = wolf_sheep_predation_file.read()

# Extract the header section from WolfSheepPredation2.htm
header_start_tag = '<div class="header-container">'
header_end_tag = '</div>'
header_index = wolf_sheep_predation_content.find(header_start_tag)
end_header_index = wolf_sheep_predation_content.find(header_end_tag, header_index + len(header_start_tag))
    
if header_index != -1 and end_header_index != -1:
    header_section = wolf_sheep_predation_content[header_index:end_header_index + len(header_end_tag)]
else:
    print(f"Erreur: Balise <div class='header-container'> non trouvée dans {wolf_sheep_predation_path}")
    exit(1)

# Extract the sidebar section from WolfSheepPredation2.htm
sidebar_start_tag = '<div id="sidebar">'
sidebar_end_tag = '</div>'
sidebar_index = wolf_sheep_predation_content.find(sidebar_start_tag)
end_sidebar_index = wolf_sheep_predation_content.find(sidebar_end_tag, sidebar_index + len(sidebar_start_tag))
    
if sidebar_index != -1 and end_sidebar_index != -1:
    sidebar_section = wolf_sheep_predation_content[sidebar_index:end_sidebar_index + len(sidebar_end_tag)]
else:
    print(f"Erreur: Balise <div id='sidebar'> non trouvée dans {wolf_sheep_predation_path}")
    exit(1)

# Read demo_aggregates content
with open(src_file_path, 'r', encoding='utf-8') as src_file:
    demo_aggregates_content = src_file.read()

# Modify demo_aggregates content by adding header-container and sidebar sections
modified_content = f"""
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<title>Demo Aggregates</title>
<link rel="stylesheet" href="styles.css">
<style>
body {{
margin: 0;
font-family: Arial, sans-serif;
}}
.container {{
display: flex;
flex-direction: column;
align-items: left; /* Centrer horizontalement */
justify-content: space-between; /* Distribuer l'espace entre les sections */
height: 100vh; /* Hauteur de la page complète */
}}
.header-container {{
background-color: #FFA500; /* Même fond que la sidebar */
height: 80px;
display: flex;
justify-content: center; /* Centrer l'image à l'intérieur de la barre */
width: 100%; /* Largeur du bandeau horizontal */
}}
#content {{
margin-top: 20px; /* Ajout d'un peu d'espace entre le bandeau et le contenu */
padding-left: 205px; /* Ajuste la marge gauche pour aligner le contenu */
}}
#sidebar {{
position: fixed;
top: 80px; /* Position de la sidebar juste en dessous du bandeau */
left: 0;
width: 150px;
height: calc(100% - 80px); /* Hauteur de la sidebar */
background-color: #FFA500; /* Même fond que le bandeau */
padding: 20px;
}}
#content h1 {{
margin-top: 20px; /* Ajout d'un peu d'espace entre l'image et le titre */
}}
#content h2 {{
margin-left: 205px; /* Ajuster la marge gauche des paragraphes */
}}
#content h3 {{
margin-left: 205px; /* Ajuster la marge gauche des paragraphes */
}}
#content ul {{
margin-left: 205px; /* Ajuster la marge gauche des paragraphes */
}}
#content p {{
margin-left: 205px; /* Ajuster la marge gauche des paragraphes */
}}
</style>
</head>
<body>
<div class="container">
{header_section}
<!-- Contenu principal -->
<div id="content">{demo_aggregates_content}</div>
</div>
<!-- Barre de navigation -->
{sidebar_section}
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src=" + gaJsHost + "google-analytics.com/ga.js type=text/javascript%3E%3C/script%3E"));
</script> 
<script type="text/javascript">
try {{
var pageTracker = _gat._getTracker("UA-12485930-1");
pageTracker._trackPageview();
}} catch(err) {{}}</script>
</body>
</html>
"""

# Write the modified content to a new file
with open(dst_file_path, 'w', encoding='utf-8') as dst_file:
    dst_file.write(modified_content)

print(f"Contenu modifié de {src_file_path} écrit dans {dst_file_path}")
