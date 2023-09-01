# Introduction à Bootstrap

Qu’est-ce Bootstrap ? C'est une bibliothèque graphique.

Il s’agit d’une bibliothèque CSS. En programmation, une bibliothèque fournit au développeur une série d’outils et de ressources qui permet aux développeurs et aux développeuses de gagner du temps et de réutiliser des fonctions déjà programmées. En Java, vous avez une bibliothèque qui vous fournit les opérations mathématiques comme le calcul d’une racine carrée (Math.sqrt). En CSS, ces bibliothèques nous fournissent des styles que nous pouvons réutiliser dans tous nos projets. 

Il en existe plusieurs, en voici quelques-uns :

- Material Design for Bootstrap
- Knacss
- Blueprint
- Unsemantic
- YUI
- 52Framework
- Pure
- Materializecss
- Semantic-ui
- Getuikit
- etc.

Bootstrap comporte un système de grille simple et efficace pour mettre en ordre l’aspect visuel d’une page web (similaire à **la grille CSS**). Il apporte du style pour les boutons, les formulaires, la navigation…

Il permet ainsi de concevoir un site web rapidement et avec peu de lignes de codes ajoutées. Pour le cours, nous avons choisi Bootstrap, car c'est l'une des plus populaire.

## Les intérêts d’utiliser une bibliothèque
Les navigateurs sont pleins de fantaisies et ont des comportements très différents malgré leur lente convergence vers les standards.

Les bibliothèques sont **cross-navigateur**, c’est-à-dire que la présentation est similaire, quel que soit le navigateur utilisé et d’une presque parfaite compatibilité.

Les bibliothèques CSS font gagner du temps de développement parce qu’ils nous proposent les fondations de la présentation.

Les bibliothèques CSS normalisent la présentation en proposant un ensemble homogène de styles.

Les bibliothèques CSS proposent en général une grille pour faciliter le positionnement des éléments.

Les bibliothèques CSS offrent souvent des éléments complémentaires : boutons esthétiques, barres de navigation, etc.

La grande diffusion de nouveaux moyens de visualisation du web (smartphones, tablettes…) impose de s’adapter aux tailles d’écran très variées, les librairies CSS prennent généralement en compte cette contrainte.

## Découvrons Bootstrap
### Historique de Bootstrap

Vous connaissez forcément Twitter, un des principaux réseaux sociaux qui inondent la planète de liens virtuels entre les humains devenus des noyaux cybernétiques. Le projet Bootstrap a été créé au départ par Mark Otto et Jacob Thornton pour répondre à des besoins internes de développement de cette entreprise au niveau de l’uniformisation de l’aspect des pages web. Il s’agissait juste de stylisation CSS, mais la bibliothèque s’est ensuite enrichie de composants Javascript.

Il a ensuite été publié en 2011 en devenant rapidement populaire parce qu’il est venu se positionner dans un espace vacant du développement. Son système de grille de 12 colonnes est devenu une référence. D’autre part sa mise en œuvre est aisée comme nous allons bientôt le voir.

Il a été mis à disposition du public sous licence MIT. Ceci signifie qu’elle est libre et qu’elle peut être utilisée pour les projets professionnelles et commerciales. De plus, vous avez accès au code source de la bibliothèque. Vous avez le droit de la modifier. La bibliothèque en est actuellement à la version 5.

### Contenu de la bibliothèque

Bootstrap propose notamment :

- Une mise en page basée sur une grille de 12 colonnes fondée sur **flexbox**;
- Du code fondé sur HTML5 et CSS3 ;
- Une bibliothèque totalement open source sous licence MIT;
- Du code qui tient compte du format d’affichage des principaux outils de navigation (responsive design) : smartphones, tablettes, etc. ;
- Des plug-ins javascript de qualité pour faire des composantes ;
- Un résultat cross-navigateur (la prise en charge de toutes les versions IE a été abandonnée avec la version 5!), donc une garantie de compatibilité maximale ;
- Une bonne documentation ;
- La garantie d’une évolution permanente ;
- Une mine de ressources variées sur le web.

Vous pouvez trouver toutes les informations sur Bootstrap directement sur le site du projet -> https://getbootstrap.com/.

## Installation de la bibliothèque
### Récupérer les fichiers

Pour récupérer les fichiers de Bootstrap, c’est simple : cliquez sur le bouton de téléchargement (download) sur le site de la bibliothèque. Vous arrivez sur la page des téléchargements avec à disposition deux boutons :

« Download » : permet de récupérer juste les fichiers nécessaires au fonctionnement de Bootstrap.

« Download source » : permets de récupérer en plus tous les fichiers sources et la documentation.

Pour vos projets web, il suffit de cliquer sur le bouton « Download ». Dans le répertoire « télécharger », votre trouverez deux sous-dossiers : ./css et ./js. Il s’agit des fichiers à inclure dans votre projet. Toutefois, vous avez trois fichiers principaux à inclure :

- bootstrap.css comporte les classes de base de Bootstrap ;
- bootstrap.js contient le code JavaScript des composants de Bootstrap ;
- bootstrap.bundle.js contient le code JavaScript des composants de Bootstrap comme bootstrap.js mais en plus la librairie popper.js ;

Les autres fichiers seront traités plus tard dans le cours.

### Le cas particulier des fichiers « min »

Les fichiers « min » (bootstrap.min.css, bootstrap.bundle.min.js et bootstrap.min.js) contiennent le même code que leurs équivalents (bootstrap.css, bootstrap.bundle.js et bootstrap.js) mais ont été épurés des commentaires et compressés pour les alléger et accélérer ainsi leur chargement. Ces fichiers sont à privilégier lorsque le site est en ligne.

### Intégrer les fichiers locaux

Il faut ensuite déclarer au minimum le fichier bootstrap.min.css (ou bootstrap.css) dans l’en-tête de la page web :

````html
<link href="/css/bootstrap.min.css" rel="stylesheet">
````

À partir de là toutes les classes sont accessibles… Évidemment vous devez adapter le lien selon la localisation de vos fichiers :

````html
<body>
 <!-- Tout le contenu de votre site -->
    <script src="/js/bootstrap.bundle.min.js"></script>    
</body>
</html>
````

Dans le cadre de ce cours, ajoutez simplement ces lignes à la fin de votre page web.

## Bootstrap et Visual Studio code

Bootstrap ajoute principalement des classes CSS. Alors, Visual Studio code peut suggérer ces classes si une extension _Intelisense_ pour CSS est installée. Je suggère [HTML CSS Support](https://marketplace.visualstudio.com/items?itemName=ecmel.vscode-html-css).

## Bootstrap et le Responsive

L'un des gros avantages d'utiliser Bootstrap contrairement à du CSS seulement est la simplicité de rendre le site Responsive. En effet, nous allons voir qu'on peut définir facilement le comportement des composantes avec une ou deux classes **Bootstrap**.

C'est très important de considérer cela quand on crée un site web, car il y a de plus en plus de types et de grosseurs d'écran; du très petit au très très gros.

### Viewport

C'est important de définir le viewport pour les sites web tablettes et mobiles.

Les viewport correspondent à la zone d’affichage de la page web. Grâce aux métadonnées (la balise `<meta>`), les développeurs web peuvent contrôler cet affichage. De plus, cette définition est importante notamment pour le référencement sur Google. Bref, elle permet de définir comment les blocs seront affichés. De base, nous utilisons la valeur suivante :

````html
<meta name="viewport" content="width=device-width, initial-scale=1.0">
````

La première valeur `(width=device-width)` définit que la largeur de la zone d’affichage correspond à la largeur de l’écran. Ensuite, la seconde valeur `(initial-scale=1.0)` définit que le zoom initial de la page est de 100%. Dans la plupart des cas, cette ligne suffit.

### Image

Un autre élément à considérer c'est la grosseur de l'image. Si on met une image avec une largeur à 100%. Alors, l'image va toujours prendre la largeur au complet. Ce qui peut étirer l'image si la page est très grande.

````css
img {
   width: 100%; 
}
````

<style>
    .image-full{
        width: 100%; 
    }
    .image-responsive{
        max-width: 100%; 
    }
</style>

<img class="image-full" src="https://www.w3schools.com/html/img_girl.jpg" alt="photo de dos">

En utilisant ceci-ci, on limite la taille de l'image à son maximum selon ça résolution et dans le cas d'une petite écran l'image est rapetissée.
````css
img {
    max-width: 100%:
}
````
<img class="image-responsive" src="https://www.w3schools.com/html/img_girl.jpg" alt="photo de dos">

Essayez en modifiant la largeur de l'écran!

Sinon, il existe une manière de charger une image différente selon la grosseur de l'écran avec la balise `<picture>`. On peut définir un `media-query` directement dans un attribute `media`. C'est important de définir quand même une balise `img` pour les navigateurs qui ne supportent pas la balise `<picture>`.

````html
<picture>
  <source srcset="img_smallflower.jpg" media="(max-width: 600px)">
  <source srcset="img_flowers.jpg" media="(max-width: 1500px)">
  <source srcset="flowers.jpg">
  <img src="img_smallflower.jpg" alt="Flowers">
</picture>
````

<picture>
  <source srcset="https://www.w3schools.com/html/img_smallflower.jpg" media="(max-width: 600px)">
  <source srcset="https://www.w3schools.com/html/img_flowers.jpg" media="(max-width: 1500px)">
  <source srcset="https://www.w3schools.com/html/flowers.jpg">
  <img src="https://www.w3schools.com/html/img_flowers.jpg" alt="Flowers">
</picture>

--------------------------------

Notes écrites par Godefroy Borduas, modifiées par Denis Rinfret et Pierre-Luc Boulanger.
