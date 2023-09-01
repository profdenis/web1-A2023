
# Révision du CSS

- [Révision du CSS](#révision-du-css)
  - [Pourquoi utiliser le CSS ?](#pourquoi-utiliser-le-css-)
  - [Appliquer le CSS](#appliquer-le-css)
  - [Résumé des sélecteurs importants](#résumé-des-sélecteurs-importants)
  - [Lier un fichier css au HTML](#lier-un-fichier-css-au-html)
  - [Orde d'application du CSS](#orde-dapplication-du-css)
  - [Mofifier le texte avec CSS (Référence)](#mofifier-le-texte-avec-css-référence)
  - [Styliser les hyperliens (Référence)](#styliser-les-hyperliens-référence)
  - [Styliser les listes (Référence)](#styliser-les-listes-référence)
  - [Système de couleur](#système-de-couleur)
    - [Tableau de comparaison](#tableau-de-comparaison)
    - [Un sélecteur de couleur](#un-sélecteur-de-couleur)
  - [Le modèle de boîtes du CSS](#le-modèle-de-boîtes-du-css)
  - [Les unités de longueur](#les-unités-de-longueur)
  - [Visuel du contenu](#visuel-du-contenu)
  - [Positionnement des boîtes](#positionnement-des-boîtes)
  - [Tableau HTML et CSS](#tableau-html-et-css)
  - [La propriété d'affichage `display`](#la-propriété-daffichage-display)
  - [Les transformations CSS](#les-transformations-css)
  - [Flexbox](#flexbox)
    - [Propriété `flex-direction`](#propriété-flex-direction)
    - [Propriété `flex-wrap`](#propriété-flex-wrap)
    - [Propriété `justify-content`](#propriété-justify-content)
    - [Propriété `align-content`](#propriété-align-content)
  - [Note de cours](#note-de-cours)

## Pourquoi utiliser le CSS ?

- Le CSS est utilisé pour définir des styles pour nos pages web, incluant le
  design, l'agencement et les variations dans l'affichage sur des appareils et
  écrans différents.
- CSS sauve beaucoup de travail. Il peut contrôler l'agencement de plusieurs
  pages web d'un seul coup.
- Le HTML décrit la structure d'un document, tandis que le CSS décrit comment il
  devrait être affiché
- CSS est un langage qui décrit le style d'un document HTML
- CSS décrit comment un document HTML devrait être affiché

## Appliquer le CSS

Pour appliquer le CSS on peut décorer notre HTML de classes.

- Elle doive être **significative**.
- Il **ne doit pas** y avoir d'**espaces** dans un nom.
- Il **ne faut pas** utiliser de **caractères spéciaux** (les
  **tirets** `-` sont **acceptés**).

Ces classes peuvent être réutilisées contrairement aux Ids. Cela est utile pour appliquer du CSS sur plusieurs éléments HTML en même temps comme avec une classe `class="container"` ou `class="texte-important"`.

On peut bien sûr utiliser les Ids ou les balises comme sélecteur de CSS, mais les classes nous offrent une plus grande flexibilité.

## Résumé des sélecteurs importants

Sélecteur | Example | Description
---------|----------|---------
 .classe | .introduction | Sélectionne tous les éléments avec la `class="introduction"` |
 .classe1.classe2 | .section1.section2 | Sélectionne tous les éléments **avec les deux** classes `class="section1 section2"` |
 .classe1&nbsp;.classe2 | .section1&nbsp;.entete | Sélectionne tous les éléments **entete** qui **sont enfants** d'un élément **section1** |
 #id | #top | Sélectionne **l'élément** avec `id="top"` |
 .class, element | .introduction, p | Sélectionne **tous les** éléments avec la `class="introduction"` et tous les éléments `<p>`  |
.class&nbsp;>&nbsp;element | .introduction>p | Sélectionne **tous les** éléments `<p>` ayant pour **parent** immédiat un élément avec la `class="introduction"` |
.class&nbsp;+&nbsp;element | .introduction+p | Sélectionne **le premier** élément `<p>` **suivant** l'élément avec la `class="introduction"` |
.class&nbsp;~&nbsp;element | .introduction~p | Sélectionne tous les éléments `<p>` qui **précède** un élément ayant la. `class="introduction"` |


Une fois que nous avons un sélecteur on peut définir une régle CSS pour ce sélecteur.

```css
balise {
    propriété-1: valeur-de-la-propriété;
    propriété-2: valeur-de-la-propriété;
/** et ainsi de suite! **/
}

.classe {
    propriété-1: valeur-de-la-propriété;
}

/** et ainsi de suite! **/
```

## Lier un fichier css au HTML

Pour lier un fichier CSS avec un document HTML il faut utiliser la balise `<link>` qu'on ajoute dans le `<head>`. Il faut spécifier les attributs `rel="stylesheet"` et `href="[La route vers mon fichier CSS].css"`

```html
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="main.css">
    <title>Exemple</title>
</head>
```

On peut utiliser la balise `<style></style>` dans le `<head>`, mais c'est plus pratique avec la balise `<link>`, car on peut réutiliser le même fichier CSS pour plusieurs pages sans alourdir le contenu de la page. De plus, il est donc possible de spécialiser nos fichiers (un style commun et un style par page).

## Orde d'application du CSS

Nous avons appris que **l'ordre** de définition du CSS est important pour déterminer **la priorité d'application** de celle-ci sur l'élément.

Par défaut, c'est toujours la dernière règle qui a priorité. Par contre, si une règle est plus spécifique, le règle plus spécifique l'emporte. Sinon, en dernier recours, l'utilisation de `!important` force la priorité sur cette règle. 

```css
.classe1 {
    color: red;
}

span {
    color: green!important;
}

.classe1 {
    color: blue;
}

.classe1 p {
    color: red;
}

.classe1 div {
    color: blue;
}

span {
    color: red;
}
```

```html
<div class="classe1">
    <p>1 - Texte en rouge</p>
    <div>
        2 - Texte en bleu
        <p>3 - Texte en rouge</p>
        <span>4 - Texte en vert</span>
    </div>
</div>
```

Donne ce résultat :

<style>
.classe1 {
    color: red;
}

.classe1 span {
    color: green!important;
}

.classe1 {
    color: blue;
}

.classe1 p {
    color: red;
}

.classe1 div {
    color: blue;
}

.classe1 span {
    color: red;
}
</style>

<div class="classe1">
    <p>1 - Texte en rouge</p>
    <div>
        2 - Texte en bleu
        <p>3 - Texte en rouge</p>
        <span>4 - Texte en vert</span>
    </div>
</div>

Dans ce cas, même si la règle `.classe1 p` est défini avant `.classe1 div`, n'importe quelle `<p>` à l'intérieur d'un élément `.classe1` va préférer la règle `.classe1 p`, car elle est **plus spécifique**. Pour une explication plus en détails, voici l'explication de [W3Schools](https://www.w3schools.com/Css/css_specificity.asp)

--------------------------------

## Mofifier le texte avec CSS ([Référence](https://www.w3schools.com/css/css_text.asp))

Nous avons vu les propriétés CSS qui modifient le texte.

Voici un résumé :
- `color`: pour modifier la couleur du texte. 
- `background-color` ou `background` : pour modifier la couleur de fond.
- `font-size` : pour modifier la grosseur des caractères du texte.
- `font-weight` : pour modifier l'épaisseur des lettres (**gras** ou non)
- `font-style` : pour modifier le texte en italique ou non.
- `font-family` : pour modifier la police de caractères.
- `text-decoration` : pour ajouter une décoration avec une couleur et une position. Généralement, c'est pour ajouter une ligne sous ou sur le texte.
- `text-align` : pour aligner le texte horizontalement à gauche, à droite ou au centre. 
- `text-shadow` : pour ajouter une ombre au texte.

## Styliser les hyperliens ([Référence](https://www.w3schools.com/css/css_link.asp))

Nous avons appris comment modifier les hyperliens `<a>` pour avoir un style différent avec les pseudo-classes (`a:link`, `a:visited`, `a:hover`, ...). Ceux-ci permettent de changer le comportement par défaut des hyperliens.

Cela nous permet de contrôler la couleur, la décoration ou la couleur de fond de l'hyperlien selon son état (ex: si la souris est par dessus `a:hover`)

````css
.ex8 a {
  outline: none;
  text-decoration: none;
  padding: 2px 1px 0;
}

.ex8 a:link {
  color: #265301;
}

.ex8 a:visited {
  color: #437A16;
}

.ex8 a:focus {
  border-bottom: 1px solid;
  background: #BAE498;
}

.ex8 a:hover {
  border-bottom: 1px solid;
  background: #CDFEAA;
  cursor: progress;
}

.ex8 a:active {
  background: #265301;
  color: #CDFEAA;
}
````
<style>
    .ex8 a {
        outline: none;
        text-decoration: none;
        padding: 2px 1px 0;
    }
    .ex8 a:link {
        color: #265301;
    }
    .ex8 a:visited {
        color: #437A16;
    }
    .ex8 a:focus {
        border-bottom: 1px solid;
        background: #BAE498;
    }
    .ex8 a:hover {
        border-bottom: 1px solid;
        background: #CDFEAA;
        cursor: progress;
    }
    .ex8 a:active {
        background: #265301;
        color: #CDFEAA;
    }
</style>

<div>
    <div class="ex8">
        <a href="https://www.youtube.com/watch?v=L8QCAt0jtpM">Un lien intéressant!</a>
    </div>
    <a href="https://www.youtube.com/watch?v=L8QCAt0jtpM">Un lien standard</a>
    <p>Mettez votre souris au dessus des liens!</p>
</div>

## Styliser les listes ([Référence](https://developer.mozilla.org/fr/docs/Learn/CSS/Styling_text/Styling_lists))

Nous avons vu comment modifier des listes pour avoir un style différent avec la propriété `line-style`. On peut modifier la hauteur entre chaque élément avec `line-height`.

````css
.ex9 ul {
    background: #3399ff;
}

.ex9 ul li {
    background: #cce5ff;
    color: darkblue;
    margin: 5px;
}

.ex10 ul {
    list-style-type: square;
    list-style-position: inside;
    line-height: 100%;
}
````

<style>
    .ex9 ul {
        background: #3399ff;
        border-left: 5px solid red;
        background-color: #f1f1f1;
        list-style-type: none;
    }
    .ex9 ul li {
        color: darkblue;
        margin: 5px;
    }
    .ex10 ul {
        list-style-type: square;
        list-style-position: inside;
        line-height: 100%;
    }
</style>
<div>
    <div>
        <ul>
            <li>Café</li>
            <li>Thé</li>
            <li>Boisson</li>
        </ul>
    </div>
    <div class="ex9">
        <ul>
            <li>Café</li>
            <li>Thé</li>
            <li>Boisson</li>
        </ul>
    </div>
    <div class="ex10">
        <ul>
            <li>Café</li>
            <li>Thé</li>
            <li>Boisson</li>
        </ul>
    </div>
</div>

## Système de couleur

On peut définir les couleurs de plusieurs façons :
- Par un **nom** -> comme `black` ou `lime`
- Par une valeur **RGB** -> rgb(0, 0, 0) pour la couleur noire
- Par une valeur **RGBA** -> rgba(0, 0, 0, 0.5) pour la couleur noire avec une opacité de 50%
- Par une valeur **hexadécimale** -> #000000 pour la couleur noire

La valeur 0 représente le noire ou l'absence de couleur et la valeur 255 le blanc ou la présence à 100% de la couleur. Donc, si on veut du rouge pur on utilise 255 et les autres couleurs à 0.

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
de [W3Schools.com](https://www.w3schools.com/colors/colors_picker.asp) ou [une palette de couleur](https://www.w3schools.com/colors/colors_palettes.asp)

## Le modèle de boîtes du CSS

Toutes les balises HTML peuvent être considérées comme des boîtes. Dans le CSS, l'expression _"modèle de boîtes"_ (_"box model"_ en anglais) est utilisée
  en parlant de design et d'agencement

Le modèle de boîtes du CSS est essentiellement une boîte qui entoure chaque balise HTML

<div class="w3-boxmodel">
<div class="margin">
    <div class="border w3-theme">
        <div class="padding">
        <div class="content"></div>
        </div>
    </div>
</div>
</div>

- **Content** (Contenu) : le contenu de la boîte, dans laquelle le texte et les images apparaissent
- **Padding** (Rembourrage) : espace transparent autour du contenu
- **Border** (Bordure) : une bordure qui entoure le contenu et le rembourrage
- **Margin** (Marge) : espace transparent qui entoure la bordure

Le modèle de boîte est important pour comprendre l'impact de certaines propriétés sur le style de l'élément. Par exemple, la propriété `color` s'applique seulement sur le texte dans la section **Content**. Le `background-color` touche le **padding** et le **content**, mais pas la **border** ou la **margin**.

## Les unités de longueur

Nom de l'unité | Symbole (utilisé en CSS) | Signification | Équivalent
---------|----------|---------|---------
 Pixel | `px` | Représente la taille selon le nombre de pixels. Cette unité dépend de l'écran ou du média. | 
 &nbsp; | `em` | Représente la taille selon la taille `font-size` du parent. Si la balise parent a une taille de 16px alors 1em vaut ce nombre. **Attention à la composition** | 1em&asymp;16px
 &nbsp; | `rem` | Représente la taille par rapport à l'élément `<html></html>`. Si la taille de base du navigateur est 16px alors 1rem vaut ce nombre pour tous les éléments. | 
 Pourcentage | `%` | Représente la taille par rapport à l'élément parent. Par exemple, `1 %` correspond à 1%&asymp;_taille-parent_/100 | 
 &nbsp; | `ex` | Représente la taille par rapport à la taille de la lettre minuscule `x` de la police d'écriture utilisée.

Notez que la taille par défaut du navigateur est généralement de 16px. 

## Visuel du contenu

Nom de la propriété | Description | Valeur possible
---------|----------|---------
`background-attachement` | Définir si l’arrière-plan sera `fixed` (fixe) ou `scroll`(mobile) avec le reste de la page. | `background-attachement: fixed` ou `backgroundattachement: scroll`
`background-color` |Définis la couleur d'arrière-plan de la boîte. | `background-color: couleur`
`background-image` | Définis une image comme arrière-plan | `background-image: url("chemin");`
`background-repeat` | Définis la répétition du `background` | `repeat`, `repeat-x`, `repeat-y`, `no-repeat`, `space`, `round`
`border` | Ajoute une bordure autour de la boîte. La propriété se décline aussi en version `top`, `bottom`, `left`, `right` | `border: epaisseur type-de-trait couleur` 
`box-shadow` | Ajoute un ombrage sous la boîte | `box-shadow: horizontal vertical fondu couleur` 
`margin` | Permets d'ajouter un espace autour d'une boîte | `margin: unité`, `margin: verticale, horizontale`, `margin: haut droite bas gauche`
`marge-left` | Permets d'ajouter un esapce à la gauche d'une boîte | Valeur selon une longueur
`marge-right` |  Permets d'ajouter un esapce à la droite d'une boîte | Valeur selon une longueur
`marge-top` |  Permets d'ajouter un esapce en haut d'une boîte | Valeur selon une longueur
`marge-bottom` |  Permets d'ajouter un esapce en bas d'une boîte | Valeur selon une longueur
`padding` | Modifie les marges **intérieures** des boîtes. Ce sont les mêmes possibilités que pour la propriété `marge` | Valeur selon une longueur
`height` | Définis la hauteur d'une boîte | `height: hauteur`
`max-height` | Définis la hauteur **maximale du contenu** de la boîte | `max-height: hauteur`
`min-height` | Définis la hauteur **minimale du contenu** de la boîte | `min-height: hauteur`
`width` | Définis la largeur du contenu de la boîte | `width: largeur`
`max-width` | Définis la largeur **maximale du contenu** d'une boîte | `max-width: largeur`
`min-width` | Définis la largeur **minimale du contenu** d'une boîte | `min-width: largeur`

## Positionnement des boîtes

La position d'un élément HTML se calcule à partir du coin haut à gauche de la boîte. **Cela inclut tout, de la marge jusqu'au contenu**. 

Il existe 5 valeurs possibles pour la propriété `position` :

- `static` : C'est la valeur et le comportement par défaut. 
- `relative` : La position est ajustée par rapport à la position de base. (déplacement)
- `fixed` : La position de l'élément est toujours à la même place dans la page. Peut importe comme l'utilisateur défile la page.
- `absolute` : La position de l'élément est calculé selon le point haut gauche de l'élément parent. 
- `sticky` : C'est un mélange de `fixed` et `relative`. L'élément est `relative` jusqu'à ce que une certaine hauteur est dépassée. Alors l'élément devient `fixed`.

Les valeurs `top`, `right`, `bottom` et
`left` définises le décalage des éléments.

Important de ne pas oublier que l'axe des `Y` est positif **vers le bas**. C'est dans le sens de la lecture.

![Axe de transformations en HTML](../images/Axe-transformation.png)

## Tableau HTML et CSS

Un tableau est un ensemble de données (table de données) groupées en lignes et colonnes. 

Un tableau est défini par les balises `<table></table>`.

La balise `<tr>` représente une ligne du tableau. La balise `<td>` représente une cellule du tableau. Pour séparer une cellule d'entête d'une cellule normale, on peut utilise la balise `<th>`.

La balise `<caption>` permet de définir un titre au tableau.

````html
<table>
    <caption>CSS Table Exemple</caption>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
    </tr>
    <tr id="ligne-1">
        <td id="cellule-1-1">1</td>
        <td id="cellule-1-2">Bob</td>
        <td id="cellule-1-3">bob@bob.com</td>
    </tr>
    <tr id="ligne-2">
        <td id="cellule-2-1">4</td>
        <td id="cellule-2-2">Amy</td>
        <td id="cellule-2-3">amy@concordia.ca</td>
    </tr>
    <tr id="ligne-3">
        <td id="cellule-3-1">7</td>
        <td id="cellule-3-2">Jean</td>
        <td id="cellule-3-3">jean@jean.org</td>
    </tr>
</table>
````

La propriété `border-collapse` détermine si les bordures devraient s'affaisser dans une seule bordure ou non.

Pour faciliter la lecture des lignes du tableau, les 
  sélecteurs de *pseudo-classes* peuvent être utilisés pour appliquer des styles
  différents :
- `tr:nth-child(even)` sélectionne seulement les lignes paires du tableau
- `tr:nth-child(odd)` sélectionne seulement les lignes impaires du tableau
- `tr:hover` sélectionne seulement les lignes sous le curseur de la souris

````css
table {
    border-collapse: collapse;
    color: black;
}

th, td {
    padding: 10px;
    border-bottom: 1px solid black;
}

th {
    font-variant: small-caps;
    text-align: center;
    background-color: black;
    color: limegreen;
}

tr:nth-child(even) {
    background-color: #eafaea;
}

tr:nth-child(odd) {
    background-color: #98e698;
}

tr:hover {
    background-color: limegreen;
    color: white;
}
````
<style>
    .ex3 {
        margin-bottom: 30px;
    }
    .ex3 table {
        border-collapse: collapse;
        color: black;
    }
    .ex3 th, .ex3 td {
        padding: 10px;
        border-bottom: 1px solid black;
    }
    .ex3 th {
        font-variant: small-caps;
        text-align: center;
        background-color: black;
        color: limegreen;
    }
    .ex3 tr:nth-child(even) {
        background-color: #eafaea;
    }
    .ex3 tr:nth-child(odd) {
        background-color: #98e698;
    }
    .ex3 tr:hover {
        background-color: limegreen;
        color: white;
    }
</style>
<div class="ex3">
    <table>
        <caption>CSS Exemple d'un tableau</caption>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
        </tr>
        <tr>
            <td>1</td>
            <td>Bob</td>
            <td>bob@bob.com</td>
        </tr>
        <tr>
            <td>4</td>
            <td>Amy</td>
            <td>amy@concordia.ca</td>
        </tr>
        <tr>
            <td>7</td>
            <td>Jean</td>
            <td>jean@jean.org</td>
        </tr>
        <tr>
            <td>8</td>
            <td>Tan</td>
            <td>tan@concordia.ca</td>
        </tr>
    </table>
</div>

## La propriété d'affichage `display`

La propriété `display` permet de modifier le type d'affichage d'une balise.

- `block` -­ L'élément génère une boîte de bloc ce qui ajoute des passages à la ligne avant et après l'élément dans l'ordre de placement. (utilise pour changer le comportement du `span` en `div`)
- `inline` - L'élément génère une ou plusieurs boîtes en lignes qui n'ajoutent pas de passages à la ligne avant ou après. Dans l'ordre de placement, le prochain
élément sera sur la même ligne si l'espace le permet. (le comportement du texte ou d'un `span` par défaut)
- `flex` - L'élément se comporte comme un élément de bloc et dispose son contenu selon le modèle des boîtes flexibles (**Flexbox**)
- `grid` - L'élément se comporte comme un élément de bloc et dispose son contenu selon le modèle de **la grille CSS**.
- `none` - Cache la balise et la page s'affiche comme si la balise n'était pas là. (Contrairement à `visibility: hidden` qui cache la balise, mais garde l'espace vide)

## Les transformations CSS

La propriété `transform` nous permet de faire des rotations, distortions, translations ou changement de grosseur d'un élément HTML.

La méthode `rotate` -> `transform: rotate(XXdeg);` permet de bouger de `XX` degrés l'élément HTML.

La méthode `translate` -> `transform: translate(X, Y);` permet de bouger de `X` horizontalement et de `Y` verticalement. X et Y peuvent être n'importe quelle mesure, mais généralement ce sera des pixels.

La méthode `scale` -> `transform: scale(X, Y);` permet de grossir ou de diminuer la taille d'un élément selon X pour la largeur et Y pour la hauteur. La valeur 1 étant la grossir de base de l'élément. Pour diminuer de 2 fois on met **0.5** et pour grossir de 2 fois on met **2**.

La méthode `skew` -> `transform: skew(X, Y);` ajoute une distorsion à un élément selon `X` horizontalement et de `Y` verticalement. La valeur est en degré.

Les méthodes `skew` et `scale` ont chacune une version juste pour les X ou Y -> `scaleX`, `scaleY` et `skewX`, `skewY`.

Important de ne pas oublier que l'axe des `Y` est positif **vers le bas**. C'est dans le sens de la lecture.

![Axe de transformations en HTML](../images/Axe-transformation.png)

## Flexbox

Nous utilisons la propriété `display: flex` afin de positionner un conteneur (ex. `<div>` ) comme un bloc et pour placer ses éléments selon un ordre calculer automatiquement. Cette propriété utilise d'autres propriétés afin de définir la manière de placer le contenu.

```html
<style>
.ex-flex section {
    display: flex;
    background-color: DodgerBlue;
}
.ex-flex p, .ex-flex h2 {
    background-color: #f1f1f1;
    margin: 10px;
    padding: 20px;
}
</style>
<div class="ex-flex">
    <section>
        <h2>Un titre</h2>
        <p>Texte 2</p>
        <p>Texte 3</p>
        <p>Texte 4</p>
    </section>
</div>
```

<style>
.ex-flex section {
    display: flex;
    background-color: DodgerBlue;
}
.ex-flex-reverse section {
    display: flex;
    background-color: DodgerBlue;
    flex-direction: row-reverse;
}
.ex-flex-column section {
    display: flex;
    background-color: DodgerBlue;
    flex-direction: column;
}
.ex-flex-wrap section {
    display: flex;
    background-color: DodgerBlue;
    flex-wrap: wrap;
}
.ex-flex p, .ex-flex h2,
.ex-flex-reverse p, .ex-flex-reverse h2,
.ex-flex-column p, .ex-flex-column h2,
.ex-flex-wrap p, .ex-flex-wrap h2 {
    background-color: #f1f1f1;
    margin: 10px;
    padding: 20px;
}
</style>
<div class="ex-flex">
    <section>
        <h2>Un titre</h2>
        <p>Texte 2</p>
        <p>Texte 3</p>
        <p>Texte 4</p>
    </section>
</div>

### Propriété `flex-direction`

La propriété `flex-direction` définit la façon dont les éléments flexibles sont placés dans un
conteneur flexible : elle définit l'axe principal et la direction des éléments (normale ou inversée). (`row`, `row-reverse`, `column` et `colum-reverse`)

<div class="ex-flex-reverse">
    <section>
        <h2>Flexbox reverse</h2>
        <p>Texte 2</p>
        <p>Texte 3</p>
        <p>Texte 4</p>
    </section>
</div>

<div class="ex-flex-column">
    <section>
        <h2>Flexbox en colonne</h2>
        <p>Texte 2</p>
        <p>Texte 3</p>
        <p>Texte 4</p>
    </section>
</div>

### Propriété `flex-wrap`
 `flex-wrap` définit si les items qui dépassent l'espace maximale doivent changer de ligne ou colonne. On appelle cela `wrap`. Les valeurs possibles sont `wrap`, `nowrap` et `wrap-reverse`.

<div class="ex-flex-wrap">
    <section>
        <h2>Flexbox avec wrap</h2>
        <p>Texte 2</p>
        <p>Texte 3</p>
        <p>Texte 4</p>
        <p>Texte 5</p>
        <p>Texte 6</p>
        <p>Texte 7</p>
        <p>Texte 8</p>
        <p>Texte 9</p>
        <p>Texte 10</p>
    </section>
</div>

### Propriété `justify-content`

La propriété `justify-content` définit la façon dont l'espace est réparti entre et autour les éléments sur l'axe principal du conteneur (par exemple si c'est un **Flexbox** `row`, alors l'espacement sera sur la ligne).

- `center` - Les éléments sont regroupés au centre
- `flex-start` - Les éléments sont regroupés au début
- `flex-end` - Les éléments sont regroupés à la fin
- `space-between` - Le premier élément est sur le bord du début du container et le dernier élément sur la fin du container. Les autres éléments sont séparés par un espace de même dimension. 
- `space-around` - Les éléments sont séparés par un espace de même dimension. Le premier élément est sur le bord du début du container avec un espace et le dernier élément sur la fin du container avec un espace. 
  
<style>
.space {
    justify-content: space-between;
    align-content: space-between;
}
.space-around {
    justify-content: space-around;
    align-content: space-around;
}
.end {
    justify-content: flex-end;
    align-content: end;
}
.center {
    justify-content: center;
    align-content: center;
}
</style>
<div class="ex-flex">
    <section class="center">
        <h2>Un titre</h2>
        <p>Texte 2</p>
        <p>Texte 3</p>
        <p>Texte 4</p>
    </section>
</div>

<div class="ex-flex">
    <section class="end">
        <h2>Un titre</h2>
        <p>Texte 2</p>
        <p>Texte 3</p>
        <p>Texte 4</p>
    </section>
</div>

<div class="ex-flex">
    <section class="space">
        <h2>Un titre</h2>
        <p>Texte 2</p>
        <p>Texte 3</p>
        <p>Texte 4</p>
    </section>
</div>

<div class="ex-flex">
    <section class="space-around">
        <h2>Un titre</h2>
        <p>Texte 2</p>
        <p>Texte 3</p>
        <p>Texte 4</p>
    </section>
</div>

### Propriété `align-content`

La propriété `align-content` définit la façon dont l'espace est réparti entre et autour les éléments sur l'axe secondaire. (par exemple si c'est un **Flexbox** `row`, alors l'espacement sera sur la colonne).

- `center` - Les éléments sont regroupés au centre
- `start` - Les éléments sont regroupés au début
- `end` - Les éléments sont regroupés à la fin
- `space-between` - Le premier élément est sur le bord du début du container et le dernier élément sur la fin du container. Les autres éléments sont séparés par un espace de même dimension. 
- `space-around` - Les éléments sont séparés par un espace de même dimension. Le premier élément est sur le bord du début du container avec un espace et le dernier élément sur la fin du container avec un espace. 

Un des défis est de centrer un élément à l'intérieur d'un "Container". Le truc est d'utiliser `justify-content: center;` avec `align-items: center;`.

## Note de cours
N'hésitez pas à consulter les notes de cours sur LÉA du cours 5 à 8, si vous avez des questions plus précices. L'objectif de ces notes est de synthétiser les notions vues en classe. 

------------------------------------------------------------------------

Notes écrites par Pierre-Luc Boulanger.

