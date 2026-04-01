src_path = 'demo_aggregates.htm'
dst_path = 'demo_aggregates_updated.htm'

with open(src_path, 'r', encoding='utf-8') as file:
    content = file.read()

# Modify the CSS section
css_section_start = '<style>'
css_section_end = '</style>'
new_css_section = """body {
margin: 0;
font-family: Arial, sans-serif;
}
.container {
display: flex;
flex-direction: column;
align-items: stretch;
margin-left: 180px;
}
.header-container {
background-color: #FFA500;
height: 80px;
display: flex;
justify-content: center;
width: 100%;
}
#content {
margin-left: 270px;
flex-grow: 1;
padding: 70px;
}
#sidebar {
position: fixed;
top: 0;
left: 0;
width: 160px;
height: calc(100% - 80px);
background-color: #FFA500;
padding: 20px;
}
#sidebar ul {
list-style-type: disc;
margin-left: 20px;
margin-top: -80px;
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
#content h1 {
margin-left: 0;
}
#content h2, #content h3, #content p {
margin-left: 190px;
}
tbody td.content-cell {
padding-left: 50px; /* 1 cm right offset */
}"""

new_content = content.replace(css_section_start + css_section_end, css_section_start + new_css_section + css_section_end)

# Modify the table section
table_section_start = '<td bgcolor="#FFFFFF" valign="top" width="*" class="content-cell">'
table_section_end = '</td>'
new_table_section = """<td bgcolor="#FFFFFF" valign="top" width="*" class="content-cell">
<p>&nbsp;</p>
<h1>Demo_Aggregates</h1>
<div class="content-right">
<h2>Généner des agrégats spatiaux dans Cormas</h2>
<p>
Demo_Aggregates est un modèle didactique qui permet de tester deux façons différentes de créer des agrégats spatiaux avec Cormas.
Ce modèle introduit les principes de fonctionnement des entités spatiales agrégats de Cormas. Dans l'arbre d'héritage des entités
spatiales génériques de Cormas, l'entité spatiale composée générale s'appelle "<b>SpatialEntity_Set</b>". Elle est spécialisée en :
</p>
<ul>
<li><b>SpatialEntityAggregate</b> dont les composants doivent être contigus (les <i>Groves</i> du modèle), et</li>
<li><b>SpatialEntityNotConnex</b> dont les composants peuvent ne pas être contigus (les <i>FragmentedForests</i> du modèle).</li>
</ul>
<img alt="spatialEntitiesUML" src="../../images/spatialEntitiesUML.png">
<p>
Les opérations agrégation-désagrégation reposent sur l'association "est composé de" entre SpatialEntitySet et SpatialEntity,
qui se traduit en deux attributs : les «components» (une collection d'entités spatiales de niveau inférieur) et «theCSE» (appartenance
éventuelle à des entités spatiales de niveau supérieur).
</p>
<p>
Dans le modèle Demo_Aggregates, 3 entités sont définies : <b>Plot</b> (sous-classe de SpatialEntityElement), <b>Grove</b> (sous-classe de
SpatialEntityAggregate) et <b>FragmentedForest</b> (sous-classe de SpatialEntityNotConnex) :
</p>
<img alt="classDiag" src="../../images/applica/aggregates2.png">
<p>
Diagramme de classe UML du modèle. L'association d'agrégation est redéfinie entre Grove et Plot (le symbole // représente cette redéfinition).
</p>
<!-- First scenario section -->
<h3>Premier scénario (initForests - StepForests)</h3>
<p>
Les composants des Groves sont définis comme des ensembles de plots contigus partageant une même condition (tree). L'initialisation charge une grille spatiale
constituée de 50 * 50 cellules (instances de la classe Plot) à partir d'un fichier (3forests.env). Chaque plot a un attribut #tree (condition agrégation)
ayant la valeur boolean true ou false. L'instanciation effective de Groves (SpatialEntityAggregate) se fait en sélectionnant les Plots connectés étant #tree,
plus une contrainte supplémentaire sur un nombre minimum (fixé à 25) de plots contigus vérifiant la condition d'agrégation.
</p>
<p>
Faire coexister dans le même modèle plusieurs entités spatiales définies à différents niveaux offre une grande flexibilité pour écrire la dynamique du modèle.
Certains processus sont plus faciles à décrire au niveau cellulaire (newState), et pour d'autres, le niveau agrégé est plus approprié (expand ou swell).
</p>
<p>
<u>StepForest:</u> propose 2 dynamiques simultanées. Dans cet exemple didactique et simple, chaque Plot a une probabilité fixe (très faible) de changer son état.
De plus, au niveau des bosquets, un processus détaillé à partir des bords s'écrit comme suit : des cellules du bord extérieur sont agrégées à la forêt
(seul un nombre donné de cellules sont sélectionnées, correspondant au centième du nombre total de composantes de l'entité forestière). Afin de garder
une compacité aux entités forestières, la priorité est donnée aux cellules qui sont entourées par le plus grand nombre de cellules déjà agrégées.
</p>
<img alt="gif1" src="../../images/applica/demo_Aggregates.gif">
<!-- Second scenario section -->
<h3>Deuxième scénario (setAggregatesFromRandomSeeds - swellForests)</h3>
<p>
10 cellules germinales sont choisies aléatoirement dans la grille spatiale de 50 * 50. 10 agrégats sont créés à partir de ces graines (donc avec un seul
composant unique). Le processus de construction itératif des agrégats repose sur l'intégration, parmi les cellules appartenant au bord extérieur de
chaque agrégat, de toutes celles qui n'appartiennent pas encore à un autre agrégat (swell).
</p>
<img alt="demo2" src="../../images/applica/demo_aggregates2.gif">
<!-- Third scenario section -->
<h3>Troisième scénario (init2AggregateLevels - step2AggregateLevels)</h3>
<p>
À partir du même état initial (chargement du fichier 3forests.env), des agrégats de bosquet (Grove) sont créés à partir des cellules en forêt. Puis des agrégats
FragmentedForest sont créés à partir des bosquets sur le critère de la taille, c'est-à-dire qu'une instance de FragmentedForest contient des bosquets de même taille.
Dans cette configuration, on obtient 7 FragmentedForests (1 of 128 groves of 1 plot, 1 of 49 groves of 2 plots, 1 of 21 groves of 3 plots, 1 of 1 grove of 240 plots,
1 of 80 plots, 1 of 2 groves of 4 plots, 1 of 1 grove of 143 plots).
</p>
<p>
Pour la dynamique (step2AggregateLevels: t), seuls l'agrégat FragmentedForest composé des plus petits bosquets est activé. Ses composants s'étendent alors depuis leur
bord extérieur (swell).
</p>
<img alt="classDiag3" src="../../images/applica/aggregates3.png">
<img alt="demo3" src="../../images/applica/demo_aggregates3.gif">
<ul>
<li>Vous pouvez télécharger le <a title="demo_Aggregates" href="../../logiciel/Demo_Aggregates.zip">modèle</a> (zip, 32 ko, Cormas 2017).</li>
<li>Pour en savoir plus, contactez <a href="mailto:bommel@cirad.fr">l'auteur</a>.</li>
</ul>
</div>
<!--#include virtual="/include/copyright_en.inc" -->
"""

new_content = new_content.replace(table_section_start + table_section_end, table_section_start + new_table_section + table_section_end)

with open(dst_path, 'w', encoding='utf-8') as file:
    file.write(new_content)

print(f"File has been updated and saved to {dst_path}")