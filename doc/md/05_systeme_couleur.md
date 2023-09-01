Système de couleur
------------------

### RGB

Il existe plusieurs formulations pour écrire une couleur. En premier lieu, vous
devez comprendre comment l'ordinateur affiche une couleur à écran. Pour le
système informatique, un écran n'est ni plus ni moins qu'une grille de pixel.
Chaque pixel est composé de trois couleurs
(rouge, vert et bleu). Chaque couleur possède 256 intensités. Ainsi, un pixel va
afficher un mélange de ces trois couleurs selon l'intensité de chacune. Il
s'agit du système **RGB**. Ainsi, la couleur rouge « pure » aura une intensité
de rouge de 255 (la valeur 0 compte comme une intensité donc [256 − 1 = 255]
au maximum) tandis qu'intensité des deux autres sera de 0.

### Hexadécimale

Par la suite, il existe un autre système de couleur. Il s'agit du système
hexadécimal. Les nombres hexadécimaux sont des nombres encodés sur une base 16
au lieu de 10. En gros, le système hexadécimal et RGB sont identiques. Il s'agit
simplement du format d'encodage. Néanmoins, les nombres hexadécimaux sont plus
faciles à comprendre pour le navigateur et il s'agit des codes utilisés dans le
monde du web. Un peu plus bas, je vous ai ajouté un tableau comparatif (non
exhaustif) entre les différents systèmes. La base 16 fonctionne comme suit :
Tout les chiffres de 0 à 9 sont représenté par leur équivalent décimal,
toutefois, les nombres de 10 à 15, sont représentés par les lettres de
l'alphabet de A à F. Par la suite, une rajoutons une décimale, ainsi 16 devient
10, 17 devient 11, etc. Voici une courte liste de valeur de décimale à
hexadécimale

|Décimale|0|1|9|10|13|15|16|25|26|50|100|150|200|255|
|--------------|---|---|---|----|----|----|----|----|----|----|-----|-----|-----|-----|
|Hexadécimale|0|1|9|A|D|F|10|19|1A|32|64|96|C8|FF|

Voici un
[convertisseur](https://sebastienguillon.com/test/javascript/convertisseur.html)
pour vous aidez. Dans ce système, chaque couleur (rouge, vert et bleu)
est représentée par deux chiffres dans l'ordre suivant Rouge-Vert-Blue. Ainsi,
le nombre `#FF0000` représente 255 rouges, 0 vert et 0 bleu. Le nombre `#00FF00`
représente 0 rouge, 255 vert et 0 bleu. Le nombre
`#0000FF` représente 0rouge, 0 vert et 255 bleu.

### Noms

Il s'agit d'un système de convention des couleurs. Il s'agit du système que vous
avons pris aujourd'hui. Je vous le recommande fortement dès que possible. Il
s'agit d'une normalisation de certaines couleurs. Prenez par exemple la
couleur `LawnGreen`. Grâce au système de nommage, vous êtes assuré que cette
couleur sera la même d'une plateforme, d'un navigateur et d'une version à
l'autre.

### RGBA

Même système que le RGB, mais elle ajoute une quatrième valeur. Cette valeur,
qui oscille entre 0 et 1, représente la transparence de la couleur. Lorsque nous
avons un rouge « pure » qui s'affiche pleinement, sa valeur RGBA
est `(255, 0, 0, 1)`. Si nous avons la valeur `(255, 0, 0, 0.5)`, alors le rouge sera à moitié transparent. De même
si `(255, 0, 0, 0)`, la couleur sera complètement transparente.

### Tableau de comparaison

| Nom (français) | Nom (normalisé) | Valeur RGB | hexadécimale |
| ----------- | ----------- | ----------- | ----------- |
| Noir | `black` | (0, 0, 0) | `#000000`
| Rouge | `red` | (255, 0, 0) | `#FF0000`
| Rouge foncé | `darkred` | (139, 0, 0) | `#8B0000`
| Indigo | `indigo` | (75, 00, 130) | `#4B0082`
| Vert lime | `limegreen` | (50, 205, 50) |     `#32CD32`
| Blanc | `white` | (255, 255, 255) | `#FFFFFF` |

### Un sélecteur de couleur

Pour vous aidez à choisir vos couleurs, prenez le sélecteur de couleur
de [W3Schools.com](https://www.w3schools.com/colors/colors_picker.asp). 