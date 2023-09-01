# Révision du HTML

Les attributs du cours précédent (révision)
-------------------------------------------

Un attribut est une propriété HTML qu'on ajoute sur la balise ouvrante.
`<div id="sectionPersonnages"></div>`

Nous avons vu ces attributs HTML :

- les identifiants uniques : `id="idenfiant"`
- l'infobulle : `title="Information à afficher dans l'infobulle"`

Les balises du cours précédent (révision)
-----------------------------------------

### Nous avons vu au premier cours :

Que toutes les pages HTML possèdent le code de base suivant :

````html
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="utf-8">
    <title>Titre du site web</title>
</head>
<body>
</body>
</html>
````

- la balise `DOCTYPE` définis la version de HTML utilisé.
- la balise `HTML` contiens l'ensemble des informations du site web.
- la balise `head` rassemble toutes les métadonnées du site web.
- la balise `meta` définis une métadonnée du site
- la balise `title` indique le titre de la page web
- la balise `body` rassemble toutes les données affichées au client du site web.

Pour séparer du texte en paragraphe, il faut utiliser la balise `<p></p>` et la
balise `<br>` ajoute un saut de ligne.

### Nous avons vu au deuxième cours :

- les commentaires : `<!-- -->`
- Les niveaux de titre :

```html
<h1>Titre très important</h1>
<h2>Titre important</h2>
<h3>Titre considérable</h3>
<h4>Titre moins important</h4>
<h5>Titre encore moins important</h5>
<h6>Titre de dernier niveau</h6>
```

- La mise en **gras** : `<strong></strong>`
- La mise en *italique* : `<em></em>`
- Le texte <mark>surligné</mark> : `<mark></mark>`
- Les listes non ordonnées : `<ul></ul>`
- Les listes ordonnées : `<ol></ol>`
    - Trois attributs des listes ordonnées : `start="number"`,
      `type="v"`, `reversed`
- Les éléments de liste `<li></li>`
- On peut faire des listes dans des listes.

```html

<ol>
    <li>Chien</li>
    <li>
        Chat
        <ul>
            <li>Ronron</li>
            <li>Chaton</li>
            <li>Bob</li>
        </ul>
    </li>
    <li>Cochon</li>
</ol>
```

- Les hyperliens : `<a href="lien"></a>`
    - avec des liens relatifs `./images/image-cool.png`
    - avec des liens absolus https://fr.wikipedia.org/wiki/Drummondville

### Nous avons vu au troisième cours :

- les caractères spéciaux
- les images : `<img src="lien" alt="texte alternatif" >`
- les figures : `<figure></figure>`
- les légendes pour les figures : `<figcaption></figcaption>`
- les conteneurs génériques :
    - pour un ensemble d'éléments : `<div></div>`
    - dans une ligne : `<span></span>`
- les conteneurs spécifiques (avec un rôle) :
    - les en-têtes : `<header></header>`
    - la navigation : `<nav></nav>`
    - les pieds de page : `<footer></footer>`
    - les sections : `<section></section>`
    - les informations complémentaires : `<aside></aside>`
    - les articles : `<article></article>`
    - les sections à cacher : `<details></details>`

Les liens vus au cours précédent (révision)
-------------------------------------------

En vrac, nous avons vu les liens :

- vers un identifiant : `href="#nom-de-identifiant"`
- vers un courriel : `href="mailto:courriel@ecrire.ici"`
- vers un numéro de téléphone **sans** extension :
  `href="tel:000-000-0000"`
- vers un numéro de téléphone **avec** extension (ex. 1234) :
  `href="tel:000-000-0000p1234"`
- vers un pseudo ou un numéro Skype : `href="callto:pseudo_skype"`

Notes de cours
--------------------
N'hésitez pas à consulter les notes de cours sur LÉA du cours 1 à 3, si vous
avez des questions plus précises. L'objectif de ces notes est de synthétiser les
notions vues en classe.

La suite du cours -> le CSS
-------------------------------------------
La prochaine partie du cours sera pour styliser et mettre en forme nos pages
HTML. C'est ce que permet le CSS. Voici un exemple avec la couleur du texte.
Nous allons comprendre comment gérer l'application du style et quelle propriété
utilisée pour modifier le style.

````html
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="utf-8">
    <title>Titre du site web</title>
    <style>
        #exemple1 {
            color: blue;
        }

        #exemple1 div {
            color: black;
        }

        #exemple1 p {
            color: red;
        }
    </style>
</head>
<body>
<div id="exemple1">
    <h1>Je suis le grand titre de ce texte</h1>
    <p>Du texte dans le paragraphe qui devrait être de la couleur rouge</p>
    <p>
        Je suis un autre texte de couleur rouge
    <div>
        Je suis du texte standard
    </div>
    </p>
    <div>
        Je suis du texte standard
        <p>Je suis un autre texte de couleur rouge</p>
    </div>
</div>
</body>
</html>
````

-------------------------------------

<style>
    #exemple1 {
        color: blue;
    }

    #exemple1 div {
        color: black;
    }

    #exemple1 p {
        color: red;
    }
</style>

<div id="exemple1">
    <h1>Je suis le grand titre de ce texte</h1>
    <p>Du texte dans le paragraphe qui devrait être de la couleur rouge</p>
    <p>
        Je suis un autre texte de couleur rouge
        <div>
            Je suis du texte standard
        </div>
    </p>
    <div>
        Je suis du texte standard
        <p>Je suis un autre texte de couleur rouge</p>
    </div>
</div>

------------------------------------------------------------------------

Notes écrites par Pierre-Luc Boulanger, modifiées par Denis Rinfret.
