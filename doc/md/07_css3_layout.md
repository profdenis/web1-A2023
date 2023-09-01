# CSS3 et la mise en page du contenu

Au dernier cours, nous avons vu le principe de boîte CSS

- Le modèle de boîtes du CSS est essentiellement une boîte qui entoure chaque
  balise HTML

<div class="w3-boxmodel">
<div class="margin">
    <div class="border w3-theme">
        <div class="padding">
        <div class="content"></div>
        </div>
    </div>
</div>
</div>

- **Content** (Contenu) : le contenu de la boîte, dans laquelle le texte et les
  images apparaissent
- **Padding** (Rembourrage) : espace transparent autour du contenu
- **Border** (Bordure) : une bordure qui entoure le contenu et le rembourrage
- **Margin** (Marge) : espace transparent qui entoure la bordure

Nous avons vu comment cacher des éléments HTML avec `display: none;` et `visibility: hidden;`.

Nous avons vu comment modifier la largeur et la hauteur du contenu HTMl avec la propriété `height` (hauteur) et `width` (largeur). De plus, il est possible de fixer un maximum ou un minimum avec  `max-height` et `min-height` ou `max-width` et `min-width`.

Nous avons appris comment utiliser la propriété `float` pour positionner un élément à côté d'un autre élément. Cela était utile pour positionner les entêtes ou les barres de navigations avec la propriété `position`.

Finalement, nous avons intégrer des tableaux avec un style css comme `tr:nth-child(even)` et `tr:nth-child(odd)` pour modifier le style de chaque ligne paire ou impaire.

------------------------------

## Image de fond avec `background-image` ([Référence](https://www.w3schools.com/css/css_background.asp))
Nous avons vu qu'il est possible de modifier la couleur de fond avec `background` ou `background-color`. Mais, il est possible de mettre à la place une image avec `background-image`.

**Attention il est important de bien choisir l'image avec le texte, car cela peut déranger la lisibilité du texte**

Généralement, on va définir une image de fond pour le `body` ou un `div`, mais on peut l'appliquer sur presque tous les éléments. On peut même définir plusieurs images en même temps
````css
 body {
    background-image: url("https://www.w3schools.com/css/paper.gif");
 }
````

````html
<body>
    <h1>Mon titre</h1>
    <div>
        Je suis du texte
    </div>
</body>
````

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <style>
        .ex1 {
            background-image: url("https://www.w3schools.com/css/paper.gif");
            color: black;
        }
    </style>
</head>
<body>
<div class="ex1">
    <h1>Mon titre</h1>
    <div>
        Je suis du texte
    </div>
</div>
</body>
</html>

---------------------------------------------

Par défaut `background-image` répète l'image verticalement et horizontalement quand la taille de l'image est plus petite que la grosseur du contenu. Si on regarde l'image plus bas, ça peut donner des résultats bizarres.

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <style>
        .ex2 {
            background-image: url("https://www.w3schools.com/css/gradient_bg.png");
            color: black;
        }
        .ex2 div {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
<div class="ex2">
    <h1>Mon titre</h1>
    <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
     <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
</div>
</body>
</html>


---------------------------
On peut utiliser la propriété `background-repeat` pour empêcher que l'image soit répétée. 
- `background-repeat: repeat-x;` pour répter seulement horizontalement et 
- `background-repeat: repeat-y;` pour répéter seulement verticalement.
- `background-repeat: no-repeat;` pour empêcher de tous les côtés.

````css
 body {
    background-image: url("https://yari-demos.prod.mdn.mozit.cloud/fr/docs/Web/CSS/CSS_Backgrounds_and_Borders/Using_multiple_backgrounds/firefox.png"), 
                      url("https://www.w3schools.com/css/gradient_bg.png");
    color: black;
    background-repeat: no-repeat,repeat-x;
    background-position: center, top;
 }

 div {
    margin-bottom: 400px;
 }
````

````html
<body>
    <h1>Mon titre</h1>
    <div>
        Je suis du texte
    </div>
</body>
````

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <style>
        .ex3 {
            background-image: url("https://yari-demos.prod.mdn.mozit.cloud/fr/docs/Web/CSS/CSS_Backgrounds_and_Borders/Using_multiple_backgrounds/firefox.png"), url("https://www.w3schools.com/css/gradient_bg.png");
            color: black;
            background-repeat: no-repeat,repeat-x;
            background-position: center, top;
            background-color: white;
        }
        .ex3 div {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
<div class="ex3">
    <h1>Mon titre</h1>
    <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
     <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
</div>
</body>
</html>


-----------------------------

Si on ne répète pas l'image, on peut aussi positionner l'image avec `background-position`. Par exemple, pour la positionner en haut à droite, on va utiliser `background-position: right top;`

````css
 body {
    background-image: url("https://www.w3schools.com/css/img_tree.png");
    background-repeat: no-repeat;
    background-position: right top;
 }

 div {
    margin-bottom: 400px;
 }
````

````html
<body>
    <h1>Mon titre</h1>
    <div>
        Je suis du texte
    </div>
</body>
````

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <style>
        .ex4 {
                background-image: url("https://www.w3schools.com/css/img_tree.png");
                background-repeat: no-repeat;
                background-position: right top;
        }
        .ex4 div {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
<div class="ex4">
    <h1>Mon titre</h1>
    <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
     <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
</div>
</body>
</html>

------------------------ 

On peut utiliser la super-propriété `background: couleur image répétition  scroll position` pour définir tout ce qui touche au fond en même temps. De plus, on peut inclure une valeur `rgba` pour rendre l'image plus ou moins opaque.

````css
 body {
    background: rgba(255, 255, 255, 0.5) url("https://www.w3schools.com/css/img_tree.png") no-repeat right top;
 }

 div {
    margin-bottom: 400px;
 }
````

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <style>
        .ex5 {
            background: rgba(0, 0, 0, 0.5) url("https://www.w3schools.com/css/img_tree.png") no-repeat right top;
            color: white;
        }
        .ex5 div {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
<div class="ex5">
    <h1>Mon titre</h1>
    <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
     <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
</div>
</body>
</html>

-----------------------------------------------

La propriété `background-size` définit la taille des images d'arrière-plan pour l'élément. On peut utiliser la valeur `contain` pour que l'image prenne le plus de place possible tout en gardant ses proportions. Ce qui fait qu'il peut y avoir plusieurs fois l'image. La valeur `cover` permet à l'image de couvrir toute la largeur ou la hauteur du conteneur et les parties qui dépassent sont rognées.

On peut aussi utiliser des pixels ou des pourcentages pour la hauteur et la largeur.
`background-size: 100% 100%` est une bonne manière de forcer l'image à prendre tout le fond d'écran, mais sans garder le ratio. 

````css
 body {
    background-image: url("https://www.w3schools.com/css/img_tree.png");
    background-size: 100% 100%;
 }

 div {
    margin-bottom: 400px;
 }
````

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <style>
        .ex6 {
            background-image: url("https://www.w3schools.com/css/img_tree.png");
            background-size: 100% 100%;
        }
        .ex6 div {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
<div class="ex6">
    <h1>Mon titre</h1>
    <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
     <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
    <div>
        Je suis du texte
    </div>
</div>
</body>
</html>

-------------------------------------------

Pour un exemple, regardez le fichier "css_background_image.html" dans les exemples css.

## Exercice #1

Reprenons la page de la Jalousie Barbouillé.
Utiliser l'image de nuage qui est dans le dossier **images** (de la version du cours 7) pour la mettre comme fond du `body` de la page.
À vous de décider comment afficher l'image. Vous pouvez mettre l'image sur une section de texte si vous préférez.

## Multi-colonnes ([Référence](https://www.w3schools.com/css/css3_multiple_columns.asp))

Nous avons vu avec la propriété `float` qu'il est possible de placer des éléments de type `block` comme un `<div>` sur la même ligne. Par contre, il existe d'autres façons
de faire avec **CSS3** comme les colonnes multiples qui est très pratique pour séparer du texte en plusieurs colonnes, un peu comme pour les journaux.

Pour cela, il suffit de définir un `<div>` avec du texte et d'ajouter ce css `column-count: 3;`.

````html
<div class="journal">
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.
</div>
````

````css
.journal {
    column-count: 3;
}
````
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <style>
        .ex-colonne .journal {
            column-count: 3;
        }
    </style>
</head>
<body>
<div class="ex-colonne">
    <div class="journal">
    Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.
    </div>
</div>
</body>
</html>


----------------------------------------------

Il y a plusieurs éléments qu'on peut définir:

- `column-count` : détermine le nombre de divisions sur la largeur.
- `column-gap` : détermine l'espace entre les colonnes généralement en pixel.
- `column-rule-style` : détermine un style entre les colonnes comme une ligne.
- `column-rule-width` : détermine la largeur du style appliquée avec `column-rule-style`.
- `column-rule-color` : détermine la couleur du style appliquée avec `column-rule-style`.
- `column-rule` : est une super-propriété qui regroupe les propriétés `column-rule-*`.
- `column-span` : détermine combien de colonnes peut prendre un élément comme un `<h2>`. Généralement, on va mettre la valeur `all` pour dire toutes les colonnes.
- `column-width` : détermine une largeur **optimale** des colonnes. Le navigateur calcule lui-même la largeur selon le texte et l'espace, c'est la raison pourquoi ce n'est pas toujours le cas (c'est juste **optimal**).

On peut donc, faire quelque chose du genre avec le même texte que l'exemple plus haut.

````css
.journal {
    column-count: 3;
    column-rule: 3px solid lightblue;
    column-gap: 30px;
    column-width: 180px;
}

h2 {
    column-span: all;
}
````
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <style>
        .ex-colonne-2 .journal {
            column-count: 3;
            column-rule: 3px solid lightblue;
            column-gap: 30px;
            column-width: 180px;
        }
        .ex-colonne-2 h2 {
            column-span: all;
        }
        .journal p {
            column-break-inside: avoid;
        }
    </style>
</head>
<body>
<div class="ex-colonne-2">
    <div class="journal">
        <h2>Je suis un titre sur toutes les colonnes</h2>
    Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.
    </div>
</div>
</body>
</html>

--------------------------------------

## Flexbox ([Référence](https://developer.mozilla.org/fr/docs/Learn/CSS/CSS_layout/Flexbox))

Dans le cas, qu'on a différents éléments qui ne sont pas du texte, les multi-colonnes ne sont pas très pratiques. C'est pour cela qu'avec **CSS3**, il existe les **Flexbox** qui permettent de remplacer le principe de `float` pour tout type de **HTML**. Les **Flexbox** ont aussi l'avantage d'être relativement **Responsive** par défaut. Ce qui veut dire que si la ligne est pleine, on peut définir comment on place le contenu qui dépasse de la ligne. C'est très pratique pour les sites web mobiles ou tablettes.

Pour définir un **Flexbox**, il définir un élément parent de type "container" avec la propriété CSS -> `display: flex;`.

````css
.flex-container {
    display: flex;
}

article, section {
    display: flex;
}
````

Regardons un exemple où l'on ajoute ce css
````css
section {
    display: flex;
    background-color: DodgerBlue;
}
p, h2 {
    background-color: #f1f1f1;
    margin: 10px;
    padding: 20px;
}
````

````html
<div class="ex-flex">
    <section>
        <h2>Je suis un titre sur toutes les colonnes</h2>
        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>
        <p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>
        <p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.</p>
    </section>
</div>
````

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
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
</head>
<body>
<div class="ex-flex">
    <section>
        <h2>Je suis un titre sur toutes les colonnes</h2>
        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>
        <p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>
        <p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.</p>
    </section>
</div>
</body>
</html>

-----------------------------------
On remarque que le contenu est bien séparé en 4 **items**, car il y 4 éléments HTML dans la `<section>`. Le dimension des colonnes est automatiquement calculé selon le contenu des colonnes. Si c'est ce qu'on veut, par exemple d'avoir toujours 3 ou 4 colonnes c'est parfait, mais qu'est-ce que ça fait si l'écran est très petite? On voit que les colonnes sont toujours à la même place, mais affiche un lettre par ligne.

C'est cette raison pourquoi on peut définir plusieurs propriétés sur le "Container" pour changer ce comportement:

- `flex-direction`: définit la direction d'empilement des **items**. (horizontal `row` ou vertical `column`)
- `flex-wrap`: définit si les items qui dépassent l'espace maximale doivent changer de ligne ou colonne. On appelle cela `wrap`. Les valeurs possibles sont `wrap`, `nowrap` et `wrap-reverse`.
- `flex-flow`: définit le `flex-direction` et le `flex-wrap` dans une même **super-propriété**.
- `justify-content`: définit comment les **items** sont alignés à l'intérieur du "Container". (`center`, `flex-start`, `flex-end`, `space-around`, `space-between`)
- `align-items`: définit l'alignement des **items** entre eux. 
- `align-content`: définit l'alignement entre les lignes.

Un des défis est de centrer un élément à l'intérieur d'un "Container". Le truc est d'utiliser `justify-content: center;` avec `align-items: center;`.

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <style>
        .ex-flex-2 section {
            display: flex;
            background-color: DodgerBlue;
            justify-content: center;
            align-items: center;
            height: 500px;
            flex-direction: column;
        }
        .ex-flex-2 p, .ex-flex-2 h2 {
            background-color: #f1f1f1;
            margin: 10px;
            padding: 20px;
        }
    </style>
</head>
<body>
<div class="ex-flex-2">
    <section>
        <h2>Je suis un titre sur toutes les colonnes</h2>
        <p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>
        <p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.</p>
    </section>
</div>
</body>
</html>

Avec ce CSS
````css
section {
    display: flex;
    background-color: DodgerBlue;
    justify-content: center;
    align-items: center;
    height: 500px;
    flex-direction: column;
}

p, h2 {
    background-color: #f1f1f1;
    margin: 10px;
    padding: 20px;
}
````

Maintenant que nous avons vu comment placer les **items** à l'intérieur du "Container", il existe plusieurs propriétés pour modifier le comportement d'un item dans le **Flexbox**.

- `order`: Définit l'ordre des **items**, dans le cas qu'on ne veut pas l'ordre définit dans le HTML par défaut. La valeur est un nombre qui commence à 0.
- `flex-grow`: C'est une proportion entre les éléments avec un nombre. Par exemple si je mets `flex-grow: 1` et `flex-grow: 8` sur un **items**, alors l'**item** avec `flex-grow: 8` prendra 8 fois plus de place que l'**item** avec la valeur 1.
- `flex-shrink`: Définit si l'**item** doit rapetisser ou non, si les items débordent du "Container". La valeur par défaut est 1. À 0, l'**item** ne repetissera jamais. Donc, un item avec `flex-shrink: 8` rapetissera plus que les autres. 
- `flex-basis`: Définit la taille initiale de l'**item**.
- `flex`: est une **super-propriété** qui définit `flex-grow`, `flex-shrink` et `flex-basis` en même temps.
- `align-self`: Écrase l'alignement définit par défaut par `align-items` pour l'**item** en particulier.

Avec cela on peut faire des pages assez complexes, mais flexible. Regardons un exemple avec un entête, trois colonnes de texte avec la dernière colonne qui est plus grosse.

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <style>
        .ex-flex-3 {
            background-color: lightblue;
        }
        .ex-flex-3 header {
            background-color: purple;
            height: 100px;
            text-align: center;
            color: white;
            line-height: 100px;
        }
        .ex-flex-3 section {
            display: flex;
            margin: 10px;
            padding: 20px;
        }
        .ex-flex-3 article {
            flex: 1 200px;
        }
        .ex-flex-3 article:nth-of-type(3) {
            flex: 3 200px;
            display: flex;
            flex-flow: column;
        }
        .ex-flex-3 article:nth-of-type(3) div:first-child {
            flex: 1 100px;
            display: flex;
            flex-flow: row wrap;
            align-items: center;
            justify-content: space-around;
        }
        .ex-flex-3 div {
            flex: 1 auto;
            margin: 5px;
            font-size: 18px;
            line-height: 1.5;
        }
        .ex-flex-3 p, .ex-flex-2 h2 {
            background-color: #f1f1f1;
            margin: 10px;
            padding: 20px;
        }
    </style>
</head>
<body>
<div class="ex-flex-3">
    <header>
        <h2>Exemple complet avec Flexbox</h2>
    </header>
    <section>
        <article>
            <h3>Premier paragraphe</h3>
            <p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>
            <p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.</p>
        </article>
        <article>
            <h3>Deuxième paragraphe</h3>
            <p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>
            <p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.</p>
        </article>
        <article>
            <div>
                <p>Test 1</p>
                <p>Test 2</p>
                <p>Test 3</p>
                <p>Test 4</p>
            </div>
            <div>
                <p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>
            </div>
            <div>
                <p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.</p>
            </div>
        </article>
    </section>
</div>
</body>
</html>

Pour voir le détail regardez l'exemple "css_flex_complet.html" avec "css_flex_complet.css".

Regardons le **CSS** ensemble. Nous avons défini les `<section>` comme "Container" **Flexbox**. Donc, tous les enfants directs de `<section>` seront dans le **Flexbox**. Par contre, si on veut que le contenu à l'intérieur de ces enfants soient en **Flexbox**, c'est possible en les déclarant eux-mêmes comme **Flexbox**. C'est ce qu'on fait on précisant qu'on veut que le troisième enfant de type `<article>` soit un **Flexbox**  `article:nth-of-type(3)` de type colonne. Même chose pour les `<p>` à l'intérieur du `<div>`, mais dans ce cas-ci pour qu'ils soient dans un **Flexbox** de type ligne.

````css
.ex-flex-3 {
    background-color: lightblue;
}
.ex-flex-3 header {
    background-color: purple;
    height: 100px;
    text-align: center;
    color: white;
    line-height: 100px;
}
.ex-flex-3 section {
    display: flex;
    margin: 10px;
    padding: 20px;
}
.ex-flex-3 article {
    flex: 1 200px;
}
.ex-flex-3 article:nth-of-type(3) {
    flex: 3 200px;
    display: flex;
    flex-flow: column;
}
.ex-flex-3 article:nth-of-type(3) div:first-child {
    flex: 1 100px;
    display: flex;
    flex-flow: row wrap;
    align-items: center;
    justify-content: space-around;
}
.ex-flex-3 div {
    flex: 1 auto;
    margin: 5px;
    font-size: 18px;
    line-height: 1.5;
}
.ex-flex-3 p, .ex-flex-2 h2 {
    background-color: #f1f1f1;
    margin: 10px;
    padding: 20px;
}
````

Remarquez l'utilisation de `flex: 1 auto;` en changeant la dimension de l'écran. L'effet obtenu est très intéressant. Le texte prend autant d'espace que possible sur la même ligne. Sinon ils changent de ligne. Cela est possible en modifiant la marge entre les **items**.

Les **Flexbox** sont vraiment puissants pour gérer le contenu de notre page web. Par contre, il nous manque un outil pour avoir le plein contrôle de la dispostion dans la page et c'est les `Media-query`.

## Media-query

Les `Media-query` permettent d'appliquer du CSS spécifiquement pour un navigateur ou un appareil en particulier. Généralement, on utilise les `Media-query` avec la largeur d'un écran du type "Appliquer XYZ si l'écran est plus petite que 500 pixels". Cela permet de gérer le côté "Responsive" d'un site web. L'objectif étant que le site web soit facilement visible peut importe l'appareil. Même si le **Flexbox** nous aide, il y a plusieurs scénarios où il faut ajuster le **Flexbox** selon l'écran.

````css
@media media-type and (media-rule) {
  /* CSS rules go here */
}
````
Un `Media-query` contient trois éléments:
- `media-type`: Indique au navigateur quelle type de média on vise (`all`, `print`, `screen` ou `speech`). Cette valeur est optionnelle. Si c'est le cas la valeur `all` est utilisée.
- `media-rule`: Une condition à teser qui doit être vraie pour que les règles CSS soient appliquées
- Une liste de règles CSS à appliquer si les conditions sont respectées.

Exemple
````css
@media screen and (width: 600px) {
    body {
        color: red;
    }
}
````

Cette règle s'applique sur l'écran and seulement si l'écran est d'**exactement 600 pixels**. Dans ce cas, la couleur du texte sera rouge.

Ce n'est pas pratique d'appliquer une règle spécifiquement pour une largeur d'écran précise. C'est pour cela, qu'on utilise `max-width` ou `min-width` à la place.

````css
@media screen and (max-width: 600px) {
    body {
        color: red;
    }
}
````

Maintenant, la règle s'appliquera sur tous les écrans plus petits ou égals à 600 pixels de largeur.

On peut appliquer plusieurs conditions avec un `or` ou un `and`.

````css
@media screen and (max-width: 600px) screen and (orientation: landscape) {
    body {
        color: red;
    }
}
````
Maintenant, la règle s'appliquera sur tous les écrans plus petits ou égals à 600 pixels de largeur et qui on une orientation de type paysage.

Il existe quelques façons de gérer le design d'un site web "Responsive". Une approche classique est de commencer par la version bureau et de faire des ajustements selon des **"breakpoints"** précis qui sont des résolutions standards pour le mobile, tablette ou bureau. (ex: pour la largeur en pixels -> 1080, 900 et 720 pour les ordinateurs de bureau)

Pour nous aider, on peut définir les règles de la plus grosse écran vers la plus petite écran. Comme cela, l'ordre d'application du CSS va toujours favoriser la dernière règle.

````css
@media screen and (max-width: 1080px) {
    body {
        color: blue;
        background-color: pink;
    }
}
````

````css
@media screen and (max-width: 720px) {
    body {
        color: red;
    }
}
````

````css
@media screen and (max-width: 500px) {
    body {
        color: green;
    }
}
````

Tester cette règle en changeant la largeur d'écran de votre navigateur. Même si la première règle s'applique sur tous les écrans de largeur 1080 pixels et moins, en réalité la deuxième règle fait que la première règle se limite entre 1080 pixels et 721 pixels pour **la couleur du texte**. **La couleur de fond** sera toujours rose à partir de 1080 pixels et moins.

Au final, un élément intéressant des `Media-query` est de changer le comportement des **Flexbox** si l'écran est d'une autre dimension. Souvent, on fait cela pour passer d'un "Container" en ligne vers un "Container" en colonne.

Regardons l'exemple de la section précédante sur les **Flexbox** "css_flex_complet.html". Si on diminue l'écran à 900 pixels de largeur le contenu commence à être serré. On peut donc, changer le `flex-direction: column;` pour que le contenu soit maintenant en colonne.

````css
/* Responsive layout - makes a one column layout instead of a two-column layout */
@media (max-width: 900px) {
    .ex-flex-3 section {
        flex-direction: column;
    }
}

@media (max-width: 600px) {
    .ex-flex-3 header {
        font-size: smaller;
    }
}
````

De plus, on remarque qu'à 600 pixels l'entête déborde. On peut dans ce cas, diminuer la police de carctères ou changer l'espacement de l'entête. "css_flex_mediaquery.html" est le fichier exemple avec les `Media-query`. Ce que nous venons de faire est un bon exemple de design de site web "responsive" en commençant par la résolution bureau et en testant l'adaptation mobile en changeant la largeur d'écran.

## Exercice 2

Reprenons la page web de La Jalousie du Barbouillé.

Nous allons remplacé l'utilisation des `float` par des **Flexbox**. Commençons par l'entête, on peut enlever l'utilisation des classes `column` et mettre l'entête avec un `display: flex;`. Pour garder le même comportement, ajouter `justify-content: space-between;`. Enlever aussi, le `height` et `min-width` forcé sur les éléments de l'entête. Cela brise le **Flexbox**.

Pour la table des matières. Vous pouvez remplacer 
````css
width: auto; /* for centering menu */
display: inline-block; /* for centering menu */
````
par l'utilisation du **Flexbox**. Je conseille de faire déborder les éléments sur une nouvelle ligne au besoin (`wrap`).

Entourez d'un `<div>` le contenu de la pièce de théâtre ainsi que la liste des personnages pour que les deux soient dans un **Flexbox**. Ce nouveau `<div>` doit garder le comportement initial avec ce CSS
````css
.flex-container{
    display: flex;
    flex-direction: row-reverse;
}
````
Un bon truc pour garder les proportions des éléments est de définir `flex: X%;` pour savoir quelle pourcentage de la ligne prend un élément. Dans ce cas, mettez 20% pour la liste des personnages et 80% pour le contenu.

### Responsive
Modifions le site web pour qu'il s'affiche bien **jusqu'à 500 pixels de largeur**.
On remarque qu'à 1024 pixels de largeur l'entête déborde. On peut alors forcé l'affichage en colonne et que le titre rapetisse. Cacher l'une des images à partir de 1024 pixels.

À partir de 1120 pixels de largeur la liste des personnes prend trop de place. Ajuster le `flex` pour qu'ils soient en colonne, mais attention la liste des personnages doit resté en haut.

Bravo! Maintenant, vous avez fait votre premier site "Responsive"!

## CSS3 système de grille ([Référence](https://developer.mozilla.org/fr/docs/Web/CSS/CSS_Grid_Layout/Basic_Concepts_of_Grid_Layout))

Les **Flexbox** sont bien pratiques quand on veut définir une suite d'éléments dans une même direction (horizontale ou verticale). Par contre, si on veut la même chose, mais pour les deux directions, une grille est plus adaptée. C'est ce que permet de faire les **CSS Grids**. 
Comme les **Flexbox**, les grilles sont un outil disponible pour faire une structure d'un site web. On peut très bien définir des **Flexbox** à l'intérieur d'une grille et vice-versa.

Voici ce que donne quelques `<div>` avec aussi peu que **deux classes CSS** : un système de grille!

<style>
.ex-grid .grid-container {
    display: grid;
    grid-gap: 10px;
    background-color: #2196F3;
    padding: 10px;
    text-align: center;
}
.ex-grid .grid-item {
    background-color: rgba(255, 255, 255, 0.8);
    color: #000;
}
</style>

<div class="ex-grid">
    <div class="grid-container" style="grid-template-areas:
        'header header header header header header'
        'menu main main main right right'
        'menu footer footer footer footer footer';">
      <div class="grid-item" style="grid-area: header"><h3>Header</h3></div>
      <div class="grid-item" style="grid-area: menu"><h3>Menu</h3></div>
      <div class="grid-item" style="grid-area: main"><h3>Main</h3></div>
      <div class="grid-item" style="grid-area: right"><h3>Right</h3></div>
      <div class="grid-item" style="grid-area: footer"><h3>Footer</h3></div>
    </div>
</div>

On peut construire une structure HTML assez rapidement. Pour ce cours, on va survoler le concept, car pour la partie **Bootstrap** ce sera un élément central à détailler.

Le système de grille comme pour le **Flexbox** utilise la propriété `display` pour déclarer un conteneur. Une manière de définir comment afficher la grille est d'utiliser la propriété `grid-template-columns` ou `grid-template-rows`. Cette propriété prend une unité de messure comme **pixel** ou une unité `fr` qui représente une fraction de l'espace disponible.

````css
.ex-grid .grid-container {
    display: grid;
    grid-template-columns: 200px 2fr 1fr;
}

.ex-grid .grid-container .grid-item{
    background: #ffd8a8;
    border: 2px solid #ffa94d;
    padding: 10px;
    border-radius: 5px;
}
````

````html
<div class="ex-grid">
    <div class="grid-container">
      <div class="grid-item"><h3>Container 1</h3></div>
      <div class="grid-item"><h3>Container 2</h3></div>
      <div class="grid-item"><h3>Container 3</h3></div>
      <div class="grid-item"><h3>Container 4</h3></div>
    </div>
</div>
````

<style>
.ex-grid-2 .grid-container {
    display: grid;
    grid-template-columns: 200px 2fr 1fr;
}
.ex-grid-2 .grid-container .grid-item{
    background: #ffd8a8;
    border: 2px solid #ffa94d;
    padding: 10px;
    border-radius: 5px;
}
</style>

<div class="ex-grid-2">
    <div class="grid-container">
      <div class="grid-item"><h3>Container 1</h3></div>
      <div class="grid-item"><h3>Container 2</h3></div>
      <div class="grid-item"><h3>Container 3</h3></div>
      <div class="grid-item"><h3>Container 4</h3></div>
      <div class="grid-item"><h3>Container 5</h3></div>
    </div>
</div>

-------------------------------------------------
En définissant cette propriété `grid-template-columns: 200px 2fr 1fr;`, on crée un système avec 3 colonnes. On peut mélanger les unités de messure. Dans ce cas, un force la première colonne à 200 pixels, la deuxième à 2/3 de l'espace restant et la troisième colonne avec 1/3 de l'espace restant. L'espace restant exclu automatiquement le 200 pixels de la première colonne. 

Les **grilles CSS** gère implicitement les rangées si on définit seulement les colonnes et inversement. Si on reprend l'exemple plus haut, le grille gère la largeur des éléments, mais pas la hauteur. Si on veut définir une hauteur implicite, il faut utiliser la propriété `grid-auto-rows` (le cas inverse serait avec `grid-auto-columns`). On peut fixer la hauteur en pixel ou utiliser une fonction `minmax(100px, auto);` qui une hauteur minimale et maximale.

````css
.ex-grid .grid-container {
    display: grid;
    grid-template-columns: 200px 2fr 1fr;
    grid-auto-rows: minmax(100px, auto);
}
````

<style>
.ex-grid-2 .grid-container-2 {
    display: grid;
    grid-template-columns: 200px 2fr 1fr;
    grid-auto-rows: minmax(100px, auto);
}
.ex-grid-2 .grid-container-2 .grid-item{
    background: #ffd8a8;
    border: 2px solid #ffa94d;
    padding: 10px;
    border-radius: 5px;
}
</style>

<div class="ex-grid-2">
    <div class="grid-container-2">
      <div class="grid-item">
         <h3>Container 1</h3>
         <div>Avec plus de contenu pour faire augmenter l'espace</div>
         <div>Avec plus de contenu pour faire augmenter l'espace</div>
      </div>
      <div class="grid-item"><h3>Container 2</h3></div>
      <div class="grid-item"><h3>Container 3</h3></div>
      <div class="grid-item"><h3>Container 4</h3></div>
      <div class="grid-item"><h3>Container 5</h3></div>
    </div>
</div>

-------------------------------------

Une autre technique pour les **grilles CSS** est de définir des zones avec un nom. La zone se définit avec la propriété css `grid-area`. À partir de cela, on peut ajouter la propriété `grid-template-areas` sur le container et définir une grille cellule par cellule avec le nom de la zone séparée d'un espace. **Le point** (.) sert de zone vide.

La seule règle est que la zone doit être un **rectangle**. Donc, impossible de mettre une zone en diagonale!

````css
.ex-grid .header {
  grid-area: header;
}
.ex-grid  .footer {
  grid-area: footer;
}
.ex-grid  .content {
  grid-area: main;
}
.ex-grid  .sidebar {
  grid-area: sidebar;
}

.ex-grid .grid-container {
    display: grid;
    grid-template-columns: repeat(9, 1fr);
    grid-auto-rows: minmax(100px, auto);
    grid-template-areas:
        "header header header header header header header header header"
        "sidebar sidebar sidebar main main main main main main"
        "footer footer footer footer footer footer footer footer footer";
}
````

<style>
.ex-grid-2 .header {
  grid-area: header;
}
.ex-grid-2  .footer {
  grid-area: footer;
}
.ex-grid-2  .content {
  grid-area: main;
}
.ex-grid-2  .sidebar {
  grid-area: sidebar;
}
.ex-grid-2 .grid-container-3 {
    display: grid;
    grid-template-columns: repeat(9, 1fr);
    grid-auto-rows: minmax(100px, auto);
    grid-template-areas:
        "header header header header header header header header header"
        "sidebar sidebar . main main main main main main"
        "footer footer footer footer footer footer footer footer footer";
}
.ex-grid-2 .grid-container-3 > div{
    background: #ffd8a8;
    border: 2px solid #ffa94d;
    padding: 10px;
    border-radius: 5px;
}
</style>

<div class="ex-grid-2">
    <div class="grid-container-3">
        <div class="header"><h2>En-tête</h2></div>
        <div class="sidebar"><h2>Barre latérale</h2></div>
        <div class="content"><h2>Contenu</h2></div>
        <div class="footer"><h2>Pied de page</h2></div>
    </div>
</div>

---------------------------

Il est facile de redéfinir les zones selon dimension de l'écran avec les **media-query**.

````css
@media (max-width: 600px) {
.ex-grid .grid-container {
    grid-template-columns: 1fr;
    grid-template-areas:
      "header"
      "sidebar"
      "main"
      "footer";
  }
}
````


On remarque que c'est assez pratique pour définir une structure plus complexe que les **Flexbox** tout en gardant la gestion du "Response". C'est justement de cette façon que **Bootstrap** gère la structure de la page.

## Exercice #3

Créer une page avec la disposition en trois colonnes par défaut avec **une grille CSS**. À 800 pixels et moins de largeur la disposition devra être en deux colonnes et à moins de 600 pixels à une colonne seulement. Voici l'inspiration:

![L'inspiration](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout/Realizing_common_layouts_using_CSS_Grid_Layout/11-responsive-areas.png)

Quelques indices: 
- Utiliser `grid-gap` pour définir un espace entre les zones.
- L'article principale devrait être plus grand que les autres zones. Vous pouvez définir seulement trois colonnes, mais préciser que la colonne du centre sera plus grosse. (avec l'unité `fr`)
- Utiliser les **media-query**!
- Utiliser une bordure et une couleur de fond pour mieux visualiser l'espace 
  qu'occupe chaque zone.

Un exemple final sera disponible sur LÉA (**07_grille_css**).

------------------------------------------------------------------------

Notes écrites par Pierre-Luc Boulanger.

