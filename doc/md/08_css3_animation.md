# CSS3 et les animations

## Transformation CSS ([Référence](https://developer.mozilla.org/fr/docs/Web/CSS/CSS_Transforms/Using_CSS_transforms))
Attaquons nous à bouger les éléments! Nous allons voir comment faire des animations et des transitions, mais avant regardons comment transformer des éléments.

La propriété `transform` nous permet de faire des rotations, distortions, translations ou changement de grosseur d'un élément HTML.

La méthode `rotate` -> `transform: rotate(XXdeg);` permet de bouger de `XX` degrés l'élément HTML.

La méthode `translate` -> `transform: translate(X, Y);` permet de bouger de `X` horizontalement et de `Y` verticalement. X et Y peuvent être n'importe quelle mesure, mais généralement ce sera des pixels.

La méthode `scale` -> `transform: scale(X, Y);` permet de grossir ou de diminuer la taille d'un élément selon X pour la largeur et Y pour la hauteur. La valeur 1 étant la grossir de base de l'élément. Pour diminuer de 2 fois on met **0.5** et pour grossir de 2 fois on met **2**.

La méthode `skew` -> `transform: skew(X, Y);` ajoute une distorsion à un élément selon `X` horizontalement et de `Y` verticalement. La valeur est en degré.

Les méthodes `skew` et `scale` ont chacune une version juste pour les X ou Y -> `scaleX`, `scaleY` et `skewX`, `skewY`.

````css
.ex7 div {
    width: 300px;
    height: 100px;
    background-color: yellow;
    border: 1px solid black;
}

.ex7 .rotate:hover {
    transform: rotate(20deg);
}

.ex7 .translate:hover {
    transform: translate(100px, 10px);
}

.ex7 .scaleBig:hover {
    transform: scale(2, 3);
}

.ex7 .scaleSmall:hover {
    transform: scale(0.75, 0.5);
}

.ex7 .skew1:hover {
    transform: skew(10deg, 5deg);
}

.ex7 .skew2:hover {
    transform: skew(10deg, 10deg);
}
````

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <style>
        .ex7 div {
            width: 300px;
            height: 100px;
            background-color: yellow;
            border: 1px solid black;
            margin: 20px 0px;
        }
        .ex7 .rotate:hover {
            transform: rotate(20deg);
        }
        .ex7 .translate:hover {
            transform: translate(100px, 10px);
        }
        .ex7 .scaleBig:hover {
            transform: scale(2, 3);
        }
        .ex7 .scaleSmall:hover {
            transform: scale(0.75, 0.5);
        }
        .ex7 .skew1:hover {
            transform: skew(10deg, 5deg);
        }
        .ex7 .skew2:hover {
            transform: skew(10deg, 10deg);
        }
    </style>
</head>
<body>
<div class="ex7">
    <div class="rotate">
        Mettez la souris sur moi! (Rotation)
    </div>
    <div class="translate">
        Mettez la souris sur moi! (Translation)
    </div>
    <div class="scaleBig">
        Mettez la souris sur moi! (Grossissement)
    </div>
    <div class="scaleSmall">
        Mettez la souris sur moi! (Rapetissement)
    </div>
    <div class="skew1">
        Mettez la souris sur moi! (Distorsion)
    </div>
    <div class="skew2">
        Mettez la souris sur moi! (Distorsion)
    </div>
</div>
</body>
</html>

## Transition CSS ([Référence](https://developer.mozilla.org/fr/docs/Web/CSS/CSS_Transitions/Using_CSS_transitions))

Les **transitions** contrôlent la vitesse de modification de l'élément en plus de modifier un élément. Plutôt que le changement soit immédiat, on peut l'étaler sur une certaine période. Ainsi, si on souhaite passer un élément de blanc à noir, on pourra utiliser les transitions CSS afin que cette modification soit effectuée progressivement, selon une courbe d'accélération donnée.

Pour faire une transition CSS, on peut choisir 4 éléments:
- Ce qu'on veut animer (les **propriétés**)
- L'état du début de l'animation
- La durée de l'animation
- Comment la transition s'effectue

**Attention**! Ce n'est pas tous les propriétés CSS qui peuvent être animées. Pour savoir ce que vous pouvez animer regardez [cette liste](https://developer.mozilla.org/fr/docs/Web/CSS/CSS_animated_properties).

Pour faire une **transition**, il faut considérer 4 valeurs:
- `transition-property` -> définit le nom des propriétés CSS pour lesquelles on veut appliquer des transitions.
- `transition-duration` -> définit la durée de la transition pour une ou toutes les propriétés.
- `transition-timing-function` -> définit une fonction de comment le transition va être appliqué ou calculé. [Voir les fonctions de temporisation](https://developer.mozilla.org/fr/docs/Web/CSS/easing-function)
- `transition-delay` -> indique le temps que la transition doit avoir entre le début et la fin.

On peut regrouper les 4 valeurs avec la super-propriété `transition: property duration timing-function delay`.

Regardons un exemple simple où l'on modifie le texte si la souris est au dessus du `<div>`. Le deuxième exemple modifie plusieurs propriétés en même temps. On peut même affectuer une transformation si on veut!

````css
.ex8 div {
    width: 300px;
    height: 150px;
    padding: 10px;
    font-size: 14px;
    background-color: lightgreen;
    border: 2px solid black;
    /*** Pour la transition ***/
    transition-property: font-size;
    transition-duration: 4s;
    transition-delay: 2s;
}

.ex8 .simple {
    /*** Pour la transition ***/
    transition-property: font-size;
    transition-duration: 4s;
    transition-delay: 2s;
}

.ex8 .simple:hover {
    font-size: 28px;
}

.ex8 .complexe {
    /*** Pour la transition ***/
    transition: width 2s, font-size 2s, background-color 2s, border 2s;
}

.ex8 .complexe:hover {
    font-size: 28px;
    background-color: #FFFFFF;
    width: 400px;
    border: 4px dashed lightgreen;
}
````

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <style>
        .ex8 div {
            width: 300px;
            height: 150px;
            padding: 10px;
            font-size: 14px;
            background-color: lightgreen;
            border: 2px solid black;
            /*** Pour la transition ***/
            transition-property: font-size;
            transition-duration: 4s;
            transition-delay: 2s;
        }
        .ex8 .simple {
            /*** Pour la transition ***/
            transition-property: font-size;
            transition-duration: 3s;
            transition-delay: 1s;
        }
        .ex8 .simple:hover {
            font-size: 28px;
        }
        .ex8 .complexe {
            /*** Pour la transition ***/
            transition: width 2s, font-size 2s, background-color 2s, border 2s;
        }
        .ex8 .complexe:hover {
            font-size: 28px;
            background-color: #FFFFFF;
            width: 400px;
            border: 4px dashed lightgreen;
        }
    </style>
</head>
<body>
<div class="ex8">
    <div class="simple">
        Mettez la souris sur moi! Mais soyez patient!
    </div>
    <div class="complexe">
        Mettez la souris sur moi!
    </div>
</div>
</body>
</html>

-------------------------------
Généralement, on va utiliser les transitions pour aider l'utilisateur à savoir ce qu'il sélectionne dans un menu ou pour changer le style d'un bouton.

Un mot clé intéressant est `all` qui nous permet d'applique la transition sur tous les éléments. Par contre, **attention** de vérifier qu'on veut vraiment appliquer la transition sur tout!

````css
.ex9 div {
    width: 300px;
    height: 150px;
    padding: 10px;
    font-size: 14px;
    background-color: lightgreen;
    border: 2px solid black;
    /*** Pour la transition ***/
    transition-property: font-size;
    transition-duration: 4s;
    transition-delay: 2s;
}

.ex9 a {
    width: 100px;
    border: 1px solid #fff;
    border-radius: 18px;
    outline: 0;
    padding: 8px 12px;
    text-align: center;
    text-decoration: none;
    font: bold 12px Verdana;
    color: #fff;
    background-color: #333;
    transition: all 1s ease-out;
}

.ex9 a:hover,
.ex9 a:focus {
    color: #333;
    background-color: #fff;
    font-size: 18px;
}

.ex9 .complexe {
    margin-top: 20px;
    background-size: cover;
    /*** Pour la transition ***/
    transition: width 2s, font-size 2s, background 4s, height 6s 2s;
}
.ex9 .complexe:hover {
    font-size: 28px;
    color: white;
    background: url('https://upload.wikimedia.org/wikipedia/commons/c/c2/La_Licorne_et_le_Loup.JPG');
    width: 600px;
    height: 600px;
}
````

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <style>
        .ex9 {
            margin-top: 20px;
        }
        .ex9 div {
            width: 300px;
            height: 150px;
            padding: 10px;
            font-size: 18px;
            background-color: lightgreen;
            border: 2px solid black;
            /*** Pour la transition ***/
            transition-property: font-size;
            transition-duration: 4s;
            transition-delay: 2s;
        }
        .ex9 a {
            width: 100px;
            border: 1px solid #fff;
            border-radius: 18px;
            outline: 0;
            padding: 8px 12px;
            text-align: center;
            text-decoration: none;
            font: bold 12px Verdana;
            color: #fff;
            background-color: #333;
            transition: all 1s ease-out;
        }
        .ex9 a:hover,
        .ex9 a:focus {
            color: #333;
            background-color: #fff;
            font-size: 18px;
        }
        .ex9 .complexe {
            margin-top: 20px;
            background-size: cover;
            /*** Pour la transition ***/
            transition: width 2s, font-size 2s, background 4s, height 6s 2s;
        }
        .ex9 .complexe:hover {
            font-size: 28px;
            color: white;
            background: url('https://upload.wikimedia.org/wikipedia/commons/c/c2/La_Licorne_et_le_Loup.JPG');
            width: 600px;
            height: 600px;
        }
    </style>
</head>
<body>
<div class="ex9">
    <nav>
        <a href="#">Accueil</a>
        <a href="#">À propos</a>
        <a href="#">Contact</a>
        <a href="#">Liens</a>
    </nav>
    <div class="complexe">
        Révélez-moi!
    </div>
</div>
</body>
</html>

------------------------------------------

## Animation CSS ([Référence](https://developer.mozilla.org/fr/docs/Web/CSS/CSS_Animations/Using_CSS_animations))

Les **animations CSS** crée des transitions entre deux états. Une animation est décrite par deux choses : des propriétés propres à l'animation et un ensemble d'étapes (keyframes) qui indiquent l'état initial, final et au besoin des états intermédiaires.

La super-propriété `animation` définit la durée, le temps ou la direction de l'animation, mais pas l'aspect visuel. Pour cela, il faut définir des `keyframes`.

Les `keyframes` représente un % de 0 à 100 où 0% est l'état initial et 100% l'étal final. Pour simplifier le tout, on utilise le terme `from` pour représenter l'état initial 0% et `to` pour l'état final 100%. Il faut définir au moins deux états. Généralement se sont les états `from` et `to`, mais ce n'est pas obligatoire.

Regardons un exemple où le texte défile de gauche à droite du navigateur. Pour cela, on précise la marge du texte dans le temps. Dans ce cas, pour voir l'animation sans arrêt on a défini `animation-iteration-count: infinite;`, sinon il faudrait rafraichir la page à chaque fois.

On peut aussi définir si l'animation doit faire le chemin inverse avec `animation-direction: alternate;`. On peut défini plusieurs animations sur un élément avec la virgule.

````css
.ex10 div {
    width: 100%;
    height: 100px;
    padding: 10px;
    font-size: 14px;
    background-color: lightgreen;
    border: 2px solid black;
}

.ex10 .simple p {
    animation-duration: 5s;
    animation-name: slidein;
    animation-iteration-count: infinite;
    max-width: 200px;
}

.ex10 .complexe p {
    max-width: 400px;
    position: relative;
    animation-name: slidebanner, colorchange;
    animation-duration: 5s, 2.5s;
    animation-iteration-count: infinite, infinite;
    animation-direction: alternate;
}

@keyframes slidein {
  from {
    left: 70%;
  }

  to {
    left: 0%;
  }
}

@keyframes slidebanner {
  from {
    left: 70%;
    max-width: 200px;
  }

  50% {
    font-size: 150%;
  }

  75% {
    font-size: 200%;
  }

  to {
    font-size: 150%;
    left: 0%;
    max-width: 400px;
  }
}

@keyframes colorchange {
  from {
    background-color: lightgreen;
    color: black;
  }

  to {
    background-color: green;
    color: white;
  }
}
````

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <style>
        .ex10 div {
            width: 100%;
            height: 100px;
            padding: 10px;
            font-size: 14px;
            background-color: lightgreen;
            border: 2px solid black;
        }
        .ex10 .simple p {
            position: relative;
            animation-duration: 5s;
            animation-name: slidein;
            animation-iteration-count: infinite;
            max-width: 200px;
        }
        .ex10 .complexe p {
            max-width: 400px;
            position: relative;
            animation-name: slidebanner, colorchange;
            animation-duration: 5s, 2.5s;
            animation-iteration-count: infinite, infinite;
            animation-direction: alternate;
        }
        @keyframes slidein {
            from {
                left: 70%;
            }
            to {
                left: 0%;
            }
        }
        @keyframes slidebanner {
            from {
                left: 70%;
                max-width: 200px;
            }
            50% {
                font-size: 150%;
            }
            75% {
                font-size: 200%;
            }
            to {
                font-size: 150%;
                left: 0%;
                max-width: 400px;
            }
        }
        @keyframes colorchange {
            from {
                background-color: lightgreen;
                color: black;
            }
            to {
                background-color: green;
                color: white;
            }
        }
    </style>
</head>
<body>
<div class="ex10">
    <div class="simple">
        <p>Je suis du texte qui va défiler</p>
    </div>
    <div class="complexe">
        <p>Je suis du texte qui va défiler</p>
    </div>
</div>
</body>
</html>

---------------------------
On a utilisé `max-width` pour limiter l'utilisation de la barre de défilement quand le texte part de la droite.

**Mais attention du texte qui bouge ça peut devenir dérangeant vite!**

On peut utiliser les animations pour plusieurs choses différentes comme pour faire bouger les boutons, des images, des formulaires, des icônes, des chargements de pages et j'en passe! 

Voici quelques exemples en vrac

````css
.center {
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  background: #000;
}

.wave {
  width: 5px;
  height: 100px;
  background: linear-gradient(45deg, cyan, #fff);
  margin: 10px;
  animation: wave 1s linear infinite;
  border-radius: 20px;
}

.wave:nth-child(2) {
  animation-delay: 0.1s;
}

.wave:nth-child(3) {
  animation-delay: 0.2s;
}

.wave:nth-child(4) {
  animation-delay: 0.3s;
}

.wave:nth-child(5) {
  animation-delay: 0.4s;
}

.wave:nth-child(6) {
  animation-delay: 0.5s;
}

.wave:nth-child(7) {
  animation-delay: 0.6s;
}

.wave:nth-child(8) {
  animation-delay: 0.7s;
}

@keyframes wave {
    0% {
        transform: scale(0);
    }
    50% {
        transform: scale(1);
    }
    100% {
        transform: scale(0);
    }
}

/***********  Chargement de page de type spinner  *******************/
.loader {
    margin: auto;
    border: 20px solid #EAF0F6;
    border-radius: 50%;
    border-top: 20px solid #FF7A59;
    width: 200px;
    height: 200px;
    animation: spinner 4s linear infinite;
}

@keyframes spinner {
    0% { transform: rotate(0deg); }
    100% { transform: rotate(360deg); }
}
/************ Bouton **************************/
.button {
    display: inline-block;
    border-radius: 4px;
    background-color: #f4511e;
    border: none;
    color: #FFFFFF;
    text-align: center;
    font-size: 28px;
    padding: 20px;
    width: 200px;
    transition: all 0.5s;
    cursor: pointer;
    margin: 5px;
}

.button span {
    cursor: pointer;
    display: inline-block;
    position: relative;
    transition: 0.5s;
}

.button span:after {
    content: '\00bb';
    position: absolute;
    opacity: 0;
    top: 0;
    right: -20px;
    transition: 0.5s;
}

.button:hover span {
    padding-right: 25px;
}

.button:hover span:after {
    opacity: 1;
    right: 0;
}
````

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <style>
        .ex11 .center {
            height: 150px;
            display: flex;
            justify-content: center;
            align-items: center;
            background: #000;
        }
        .ex11 .wave {
            width: 5px;
            height: 100px;
            background: linear-gradient(45deg, cyan, #fff);
            margin: 10px;
            animation: wave 1s linear infinite;
            border-radius: 20px;
        }
        .wave:nth-child(2) {
            animation-delay: 0.1s;
        }
        .wave:nth-child(3) {
            animation-delay: 0.2s;
        }
        .wave:nth-child(4) {
            animation-delay: 0.3s;
        }
        .wave:nth-child(5) {
            animation-delay: 0.4s;
        }
        .wave:nth-child(6) {
            animation-delay: 0.5s;
        }
        .wave:nth-child(7) {
            animation-delay: 0.6s;
        }
        .wave:nth-child(8) {
            animation-delay: 0.7s;
        }
        @keyframes wave {
            0% {
                transform: scale(0);
            }
            50% {
                transform: scale(1);
            }
            100% {
                transform: scale(0);
            }
        }
        .loader {
            margin: auto;
            border: 20px solid #EAF0F6;
            border-radius: 50%;
            border-top: 20px solid #FF7A59;
            width: 200px;
            height: 200px;
            animation: spinner 4s linear infinite;
        }
        @keyframes spinner {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }
        .ex11 .button {
            display: inline-block;
            border-radius: 4px;
            background-color: #f4511e;
            border: none;
            color: #FFFFFF;
            text-align: center;
            font-size: 28px;
            padding: 20px;
            width: 200px;
            transition: all 0.5s;
            cursor: pointer;
            margin: 5px;
        }
        .ex11 .button span {
            cursor: pointer;
            display: inline-block;
            position: relative;
            transition: 0.5s;
        }
        .ex11 .button span:after {
            content: '\00bb';
            position: absolute;
            opacity: 0;
            top: 0;
            right: -20px;
            transition: 0.5s;
        }
        .ex11 .button:hover span {
            padding-right: 25px;
        }
        .ex11 .button:hover span:after {
            opacity: 1;
            right: 0;
        }
    </style>
</head>
<body>
<div class="ex11">
    <div class="center">
        <div class="wave"></div>
        <div class="wave"></div>
        <div class="wave"></div>
        <div class="wave"></div>
        <div class="wave"></div>
        <div class="wave"></div>
        <div class="wave"></div>
        <div class="wave"></div>
        <div class="wave"></div>
        <div class="wave"></div>
    </div>
    <div class="loader"></div>
    <button class="button" style="vertical-align:middle"><span>Bouton animé </span></button>
</div>
</body>
</html>

-------------------------

## Exercice #1

Reprenons la page de la Jalousie Barbouillé.

Ajouter une **transformation** sur chaque `hover` des liens dans la navigation pour que les éléments soient 1,25 fois plus gros. Par contre, si c'est le lien "Source", il faut que l'élément rapetisse de 0,5 fois.

Ajouter une **rotation** de 180 degrés sur l'image dans l'entête si la souris passe au dessus de l'image.

Ajouter une **transition** sur chaque titre `<h1>` et `<h2>` pour que le texte grossisse de 1,25 fois et que la ligne sous le texte soit doublée.

Copier l'image dans l'entête pour la mettre complétement à droite. Ajouter une **animation** qui fait tourner l'image quand la souris est par dessus l'image (Par exemple: la faire tourner de 180 degrés, la remettre à 0 degré et la faire tourner de 720 degrés).

Remplacer une image de la représentation de la pièce par du texte et une boite avec une couleur de fond (`border` sur un `<div>` avec `background-color`). Dès que la souris est sur la boite, afficher l'image dans la boite avec une **transition**. 

**Truc**: si vous utilisez une image de fond, l'image ne peut pas faire de transition avec une couleur. Pour cela, vous pouvez plutôt utiliser une transition sur la largeur/hauteur pour faire une transition fluide.

## Création d'un site web

Le reste du cours aura pour but de créer un site web HTML/CSS à partir d'instruction.
Consulter les notes de cours `08_exercice_dirigé`.

------------------------------------------------------------------------

Notes écrites par Pierre-Luc Boulanger.

