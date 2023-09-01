# Les tableaux

Un tableau est un ensemble de données (table de données) groupées en lignes et colonnes. 

Par exemple, on peut présenter une liste d'utilisateur avec leur nom, identifiant et leur courriel. Automatiquement, chaque utilisateur est une **ligne** et chaque propriété (nom, id et courriel) est une **colonne**.

<table>
    <caption>Exemple d'un tableau HTML</caption>
    <tr>
        <th>ID</th>
        <th>Nom</th>
        <th>Courriel</th>
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

Nous allons voir comment créer un tableau et par la suite le modifier avec du CSS.

[Référence](https://developer.mozilla.org/fr/docs/Learn/HTML/Tables/Basics)

## Tableaux HTML

Un tableau est défini par les balises `<table></table>`. On va trouver le contenu du tableau à l'intérieur de la balise `<table>`.

La balise `<tr>` représente une ligne du tableau. La balise `<td>` représente une cellule du tableau. Donc, si on veut définir une cellule d'une ligne particulière : un crée un `<td>` qui se trouve à l'intérieur de `<tr>` qui se trouve à l'intérieur de `<table>`. Pour définir un tableau de 3 lignes et 3 colonnes, il faut créer 3 `<tr>` et 3 `<td>` pour chaque `<tr>`.

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

On remarque que **la première cellule de chaque ligne** représente la première colonne et ainsi de suite. 
On peut définir la première ligne comme l'entête du tableau avec les balises `<th>` au lieu des `<td>` pour chaque cellule. Automatiquement, un style différent sera appliqué pour mieux distinguer les entêtes.

La balise `<caption>` permet de définir un titre au tableau. Généralement, on met la balise `<caption>` juste après la balise ouvrante `<table>`

## Tableaux CSS

Il est facile de modifier la couleur des entêtes, des lignes ou des colonnes. Par contre, si on veut modifier une ligne sur deux, il existe des pseudo-classes pour cela. `:nth-child(even)` nous permet de modifier chaque élément pair. `:nth-child(odd)` modifie chaque élément impair.

### Exemple: `css_table.html`

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
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
        .ex3 caption {
            caption-side: bottom;
            font-style: oblique;
            font-size: 75%;
            margin-top: 5px;
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
</head>
<body>
<div class="ex3">
    <table>
        <caption>CSS Table Exemple</caption>
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
</body>
</html>

````html
<!DOCTYPE html>
<html lang="en">
<head>
    <title>CSS Table Exemple</title>
    <link rel="stylesheet" type="text/css" href="css_table.css">
</head>
<body>
<table>
    <caption>CSS Table Exemple</caption>
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
</body>
</html>
````

#### Fichier `css_table.css`

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

caption {
    caption-side: bottom;
    font-style: oblique;
    font-size: 75%;
    margin-top: 5px;
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

- La propriété `border-collapse` détermine si les bordures devraient 
  s'affaisser dans une seule bordure ou non
    - lui donner la valeur `collapse` va éviter de laisser une espace entre 
      les bordures de cellules et de la table
- Des styles différents sont appliqués à l'entête de table `th`, aux données 
  de la table `td` et à la légende `caption`
- Pour faciliter la lecture des lignes du tableau, les 
  sélecteurs de *pseudo-classes* peuvent être utilisés pour appliquer des styles
  différents, dans cet exemple, aux lignes paires et impaires et aux lignes 
  qui se retrouvent en dessous du curseur de la souris
    - `tr:nth-child(even)` sélectionne seulement les lignes paires du tableau
    - `tr:nth-child(odd)` sélectionne seulement les lignes impaires du tableau
    - `tr:hover` sélectionne seulement les lignes sous le curseur de la souris
    - dans chaque cas, une couleur de fond différente est appliquée, en plus 
      d'une couleur de texte différente pour `:hover`
  
------------------------------------------------------------------------

Notes écrites par Pierre-Luc Boulanger d'après des exemples créés par Denis 
Rinfret.
