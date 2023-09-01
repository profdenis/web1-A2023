
La base du HTML (révision)
==========================

## Le code de base

Toutes les pages HTML possèdent le code de base suivant :

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

#### Balise : `DOCTYPE`

Définis la version de HTML utilisé.

#### Balise : `HTML`

Contiens l'ensemble des informations du site web.

#### Balise : `head`

Rassemble toutes les métadonnées du site web.

#### Balise : `meta`

Définis une métadonnée du site

#### Balise : `title`

Indique le titre de la page web

#### Balise : `body`

Rassemble toutes les données affichées au client du site web.

Nous y retrouvons les paragraphes, les images, les hyperliens, les vidéos, les boutons, etc.


La première mise en forme (révision)
====================================

## Les paragraphes

Tous les paragraphes sont écrits dans la balise `<p></p>` comme ceci :

````html
<p>Ceci est un paragraphe.</p>
````

## Les sauts de lignes

À l'intérieur des paragraphes, nous utilisons la balise `<br >` afin de réaliser un saut de ligne.

````html
<p>
    Ceci est un paragraphe avec un saut de ligne.<br>Cette ligne commence à la suit d'un saut de ligne.
</p>
````

Petite astuce avant de commencer
================================

À ma connaissance, dans tous les langages, il existe les commentaires. Les commentaires sont des petits bouts de code
qui ne sont ni exécutés ni présentés au client.

Dans le cadre des pages web, il s'agit simplement d'une ligne qui n'est pas affichée et sert **d'indication au
développeur**. Les commentaires vous permettent d'apporter des précisions au fonctionnement du site et, ainsi, faciliter
la maintenance.

Un commentaire sera toujours contenu dans les balises `<!-- -->`. Vous n'avez qu'à écrire votre commentaire entre les
tirets `--`. De plus, les commentaires sont **multi-lignes**. C'est-à-dire qu'ils commencent avec l'ouverture et qu'ils
se terminent avec la fermeture peu importe le nombre de lignes.


Exemple des commentaires
------------------------

Prenez les deux codes suivants :

````html
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="utf-8">
    <title>Exemple Commentaire-1</title>
</head>
<body>
<p>Ma page contient un commentaire au paragraphe suivant.</p>
<!-- Ceci est le commentaire presque que pertinent -->
<p>Nous avons passé le commentaire.</p>
</body>
</html>
````

````html
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="utf-8">
    <title>Exemple Commentaire-2</title>
</head>
<body>
<p>Ma page contient un commentaire au paragraphe suivant.</p>
<!--
    Ceci est le commentaire.
    Il englobe une balise <p>.
    <p>Ce paragraphe est contenu dans le commentaire. Il n'est pas affiché.</p>
-->
</body>
</html>
````

Tout ce qui est entre `<!--` et `-->` n'est pas affiché.


Les titres
==========

Avez-vous déjà lu un article de journal sans titre ou encore un livre ? Pourquoi les titres sont-ils si importants ? Ils
permettent aux personnes qui lisent votre article ou votre livre d'avoir un contenu de votre texte. Prenons un exemple,
je vous donne un livre mon autobiographie. D'après vous, quel est le meilleur titre ?

1. Ma vie d'enseignant
2. L'art de la sculpture de demain

Maintenant, imaginez que je vous donne un autre livre. Il n'y a pas de titre. Il possède seulement une couverture rouge.
Auriez-vous l'intention de lire ?

Les balises `h1` à `h6` 
------------------------------------------------------------------------------

[Référence](https://www.w3schools.com/tags/tag_hn.asp)

Il existe six niveaux de titre en HTML. Chaque niveau correspond à identifier une section de votre texte. Plus le
chiffre est bas, plus le niveau du titre est haut.

Un titre `h1` est considéré comme le titre principal. En général, il existe un seul titre principal par page. Par
exemple, si votre page web parle des animaux en ville, votre titre principal pourrait être **Les animaux en ville**.

Un titre `h2` est considéré comme un chapitre. Il définit un lien logique entre plusieurs sections. Si nous
suivons l'exemple précédent, nous pourrions avoir un chapitre qui parle des animaux domestiques comme les chats et les
chiens. Alors, nous pourrions nommer le titre `h2` **Les animaux domestiques**.

Un titre `h3` est considéré comme un titre de section. Il définit un lien logique entre plusieurs sous-sections. Si nous
suivons l'exemple précédent, nous pourrions avoir une section qui parle d'un animal domestique en particulier comme les chats ou les
chiens. Alors, nous pourrions réunir cette section sous le titre `h3` qui se nomme **Les chats**.

Un titre `h4` est considéré comme un titre de sous-section. Il permet de séparer les sections pour clarifier un texte.
Continuons avec l'exemple précédent, notre section parle des chats. Une sous-section pourrait être dédiée
à l'alimentation des chats. Alors, le titre `h4` pourrait être **L'alimentation**.

Les autres titres `h5` et `h6` sont de moindre importance.

Pourquoi utiliser la lettre `h` ? La lettre `h` provient du mot
*heading* qui signifie titre en français.

Ce tableau est une comparaison entre les niveaux de titre et les sections d'un livre. Il s'agit une interprétation
possible. Utilisez-le à titre indicatif seulement.

|Niveau de titre HTML|Équivalent dans un livre|Exemple|
|----------------------|----------------------------|-------------------------|
|`h1`|Titre|Les animaux en ville|
|`h2`|Chapitre|Les animaux domestiques|
|`h3`|Section d'un chapitre|Les chats|
|`h4`|Sous-section d'un chapitre|L'alimentation|
|`h5`|Paragraphe particulier|Dans la nature|
|`h6`|Rarement utilisé|...|

Pour utiliser un titre, il suffit d'utiliser une balise en pair
`<hn></hn>` où la lettre `n` représente le chiffre de votre titre. Exemple :

````html
<h1>Ceci est le titre principal</h1>
<h2>Ceci est un chapitre de votre page</h2>
<h3>Ceci est une section de votre page</h3>
<h4>Ceci est une sous-section de votre page</h4>
<h5>Ceci est un paragraphe de votre sous-section</h5>
<h6>Ceci est un titre de moindre importance</h6>
````

### Exemple complet

````html
<body>
<h1>Les titres en HTML</h1>
<p>
    Dans cette page présente l'utilisation des titres en Web. Nous explorons les différends nivaux à utiliser dans nos
    futurs projets.
</p>
<h2>Pourquoi un titre est important ?</h2>
<p>
    Les titres permettent de rendre le texte et la page web plus claire pour l'utilisateur. Cette séparation permet de
    mieux comprendre.
</p>
<h3>Principe de compréhension</h3>
<p>
    Rendre un texte plus clair permet de mieux comprendre sa signification.
</p>
</body>
````

### Voici le rendu de ce code

<body>
<h1>Les titres en HTML</h1>
<p>
    Dans cette page présente l'utilisation des titres en Web. Nous explorons les différends nivaux à utiliser dans nos
    futurs projets.
</p>
<h2>Pourquoi un titre est important ?</h2>
<p>
    Les titres permettent de rendre le texte et la page web plus claire pour l'utilisateur. Cette séparation permet de
    mieux comprendre.
</p>
<h3>Principe de compréhension</h3>
<p>
    Rendre un texte plus clair permet de mieux comprendre sa signification.
</p>
</body>

--------------------------------------- 

### Quel est la différence entre la balise `<title></title>` et `<h1></h1>` ?

La balise `<title></title>` permet de donner un nom à la page d'un site web. En général, nous donnons le titre du site
web à cette balise tandis que le titre `<h1></h1>` décrit la page.

De plus, il est fortement recommandé de garder une ordre d'utilisation des titres. Par exemple, si vous utilisez `h1` et `h2`, il faut utiliser `h3` au prochain niveau et non `h4`.

### Pouvons-nous utiliser les nivaux de titre à des fins visuelles ?

Non et totalement non ! Les niveaux de titre ont une signification. Lorsqu'un moteur va interpréter votre page, il va
associer votre niveau à une signification. Il est donc important de conserver cette signification.


Principe des balises parentes
-----------------------------

Dans une page web, chaque balise qui est **contenue dans une autre balise** est dite une balise enfant. Inversement, une
balise qui **contient une autre balise** est dite une balise parente. Prenons le code suivant :

````html
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="utf-8">
    <title>Les balises parentes</title>
</head>
<body>
<p>Ma page contient un commentaire au paragraphe suivant.</p>
</body>
</html>
````

|**Balise parente**|`<html>`|`<head>`|`<body>`|
|-----------------------|----------|-----------|----------|
|**Balise enfant** (1)|`<head>`|`<meta >`|`<p>`|
|**Balise enfant** (1)|`<body>`|`<title>`|

**La balise** `<p></p>` **peut être une balise parente. C'est le cas notamment pour le texte mis en valeur (gras,
italique, etc.) et les liens.**


Mettre un texte en valeur
-------------------------

En HTML, il existe trois méthodes pour mettre un texte en valeur. Nous pouvons mettre le **texte en gras** (plus fort).
Nous pouvons mettre le *texte italique* et <mark>surligner le texte</mark>.

Il est nécessaire d'utiliser ces éléments pour la mise en forme
**seulement**. Leur but n'est pas de modifier le visuel de la page. Il existe le CSS pour cela. Le but de ces balises
est d'accentuer le texte. Par exemple, vous pourriez vouloir mettre l'accent sur **une expression particulière** pour
indiquer au client que cette dernière est importante.

Un autre exemple est la citation. Grâce à l'italique, nous pouvons voir rapidement la citation dans une phrase.
Exemple : Lorsque Neil Armstrong mit le pied sur la Lune, il dit « *C'est un petit pas pour l'homme, un bond de géant
pour l'humanité* ».


En gras, la balise `strong` 
--------------------------------------------------------------------------------------

[Référence](https://www.w3schools.com/tags/tag_strong.asp)

La balise `<strong></strong>` permet d'indiquer du **texte en gras**
dans un paragraphe. La phrase suivante :

Cette phrase possède un mot en **gras**.

À comme équivalent HTML, le code suivant :

````html
<p>
    Cette phrase possède un mot en <strong>gras</strong>.
</p>
````

En italique, la balise `em` 
----------------------------------------------------------------------------------

[Référence](https://www.w3schools.com/tags/tag_em.asp)

La balise `<em></em>` permet de mettre le *texte en italique* dans un paragraphe. La phrase suivante :

Ici, nous retrouvons un mot en *italique*.

A comme équivalent HTML, le code suivant :

````html
<p>
    Ici, nous retrouvons un mot en <em>italique</em>.
</p>
````

Surligner le texte, la balise `mark` 
---------------------------------------------------------------------------------------------

[Référence](https://www.w3schools.com/tags/tag_mark.asp)

La balise `<mark></mark>` permet de mettre le surligner le texte dans un paragraphe. La phrase suivante :

Lorsque nous prenons des notes dans un texte, il est courant de surligner un mot important.

A comme équivalent HTML, le code suivant :

````html

<p>
    Lorsque nous prenons des notes dans un texte, il est courant de
    <mark>surligner</mark>
    un mot important.
</p>
````

### Compatibilité avec les navigateurs

La balise `<mark></mark>` n'est pas compatible avec tous les navigateurs et leurs versions. Voici un tableau qui résume
la version à partir de laquelle un navigateur va supporter cette balise

|**Navigateur**|![Google Chrome](https://www.w3schools.com/images/compatible_chrome.gif)|![](https://www.w3schools.com/images/compatible_edge.gif)|![Firefox](https://www.w3schools.com/images/compatible_firefox.png)|![Safari](https://www.w3schools.com/images/compatible_safari.gif)|![](https://www.w3schools.com/images/compatible_opera.gif)|
|--------------|------------------------------------------------------------------------|---------------------------------------------------------|-------------------------------------------------------------------|-----------------------------------------------------------------|----------------------------------------------------------|
|**Version minimale**| 6.0 |9.0 |4.0 |5.0 |11.1|

## Emphase
Certaines balises comme `<strong></strong>` et `<em></em>`, en plus de changer la police de caractères, ajoute de l'emphase sur le texte. Cela permet au lecteur de page web d'augmenter l'importance de ce texte.

La balise `<b></b>` est la version sans importance de la balise `<strong></strong>`. Le texte est bien en **gras**, mais on devrait préféré les versions avec emphase ou importance avant. Il est même suggéré d'utiliser le CSS avant d'utiliser la balise `<b></b>`.

Même chose pour la balise `<i></i>` qui met le texte en italique sans appliquer d'emphase.

Exemple : Mettre en page un texte de théâtre
--------------------------------------------

Téléchargez le document _La Jalousie du Barbouillé_ sur Léa. Nous allons utiliser ce
fichier texte pour créer une page web des deux premières scènes de la pièce de Molière. Pour y parvenir, voici notre mise
en page :

- Le titre de la pièce sera un titre de niveau 1.
- Le titre des scènes sera un titre de niveau 3.
- Le nom des personnages présents dans une scène doit être dans le titre et en italique.
- La liste des personnages et le texte devront être séparés par des textes de niveau 2.
- Les didascalies devront être en italique.
- Le nom du personnage devra être en gras avant son dialogue.
- Chaque réplique est contenue dans un paragraphe.
- Les indications du personnage (action présente dans son dialogue)
  doivent être surlignées.

Comment améliorer notre page web ?
----------------------------------

Comme nous pouvons le voir, notre page web *La Jalousie du Barbouillé*
est bien, mais nous pouvons l'améliorer. En effet, la liste des personnages est difficile à lire. Il s'agit simplement
d'un paragraphe où chaque personnage est séparé par le caractère `;`. Comment pouvons-nous y remédier ? Nous pourrions
utiliser des listes.

Les listes non ordonnées ou listes à puce sont une série de lignes ayant un point devant chaque ligne. Elle sert à
indiquer que chaque élément est séparé, mais qu'ils font partie du même ensemble. Dans notre exemple, le paragraphe :

````txt
Le Barbouillé (mari d'Angélique) ; le Docteur ; Angélique (fille de Gorgibus) ; Valière (amant d'Angélique) ; Cathau (
suivante d'Angélique) ; Gorgibus (père d'Angélique) ; Villebrequin ; la Vallée
````

devient :

- Le Barbouillé (mari d'Angélique)
- Le Docteur
- Angélique (fille de Gorgibus)
- Valière (amant d'Angélique)
- Cathau (suivante d'Angélique)
- Gorgibus (père d'Angélique)
- Villebrequin
- La Vallée

Les listes non ordonnées, la balise `ul` 
-----------------------------------------------------------------------------------------------

[Référence](https://www.w3schools.com/tags/tag_ul.asp)

En HTML, les balise `<ul></ul>` démontre qu'elles contiennent une liste d'élément non ordonnée. C'est-à-dire qu'ils
n'ont pas d'ordre entre eux. Nous utilisons les lettres `ul` pour *unordered list*.

Néanmoins, il est aussi nécessaire d'indiquer au navigateur où commence un élément de la liste et où il termine. Nous
devons utiliser la balise
`<li></li>`


Les éléments d'une liste, la balise `li` 
-----------------------------------------------------------------------------------------------

[Référence](https://www.w3schools.com/tags/tag_li.asp)

Comme nous l'avons indiqué, une liste non ordonnée contiendra
**toujours** des éléments. Chaque élément est contenu dans une balise
`<li></li>`. Prenons par exemple, la liste suivante :

- Item 1
- Item 2
- Item 3

Sachant qu'une liste non ordonnée sera décrite par une balise
`<ul></ul>` et que chaque élément sera contenu dans sa propre balise
`<li></li>`, notre exemple précédent devient simplement :

````html

<body>
<ul>
    <li>Item 1</li>
    <li>Item 2</li>
    <li>Item 3</li>
</ul>
</body>
````

***Petite note :*** Les listes ne sont pas mises dans un paragraphe.


Revenons à *La Jalousie du Barbouillé*
--------------------------------------

Notre liste de personnage qui était le paragraphe suivant :

````html
<h3>Les personnages</h3>
<p>Le Barbouillé (mari d'Angélique); le Docteur; Angélique (fille de Gorgibus); Valière (amant d'Angélique); Cathau
    (suivante d'Angélique); Gorgibus (père d'Angélique); Villebrequin; la Vallée
</p>
````

Devient simplement :

````html
<h3>Les personnages</h3>
<ul>
    <li>Le Barbouillé (mari d'Angélique)</li>
    <li>Le Docteur</li>
    <li>Angélique (fille de Gorgibus)</li>
    <li>Valière (amant d'Angélique)</li>
    <li>Cathau (suivante d'Angélique)</li>
    <li>Gorgibus (père d'Angélique)</li>
    <li>Villebrequin</li>
    <li>La Vallée</li>
</ul>
````

Les listes ordonnées
--------------------

Il existe un autre type de liste. Il s'agit des **listes ordonnées**. Ces listes sont aussi appelées des **listes
numérotées**. Nous utilisons ces listes pour *représenter des étapes*. Les listes ont toujours cette forme :

1. Item 1
2. Item 2
3. Item 3

Les listes ordonnées, la balise `ol` 
-------------------------------------------------------------------------------------------

[Référence](https://www.w3schools.com/tags/tag_ol.asp)

En HTML, les balise `<ol></ol>` démontre qu'elles contiennent une liste d'élément ordonnée. C'est-à-dire qu'ils ont un
ordre entre eux. Nous utilisons les lettres `ol` pour *ordered list*.

Les éléments de ces listes, à l'instar des listes non ordonnées, sont contenus dans des balises `<li></li>`.

Prenons la liste suivante :

1. Item 1
2. Item 2
3. Item 3

En HTML, l'équivalent serait :

````html

<body>
<ol>
    <li>Item 1</li>
    <li>Item 2</li>
    <li>Item 3</li>
</ol>
</body>
````

***Petite note :*** Comme les listes non ordonnées, les listes ordonnées ne sont pas mises dans un paragraphe.


Les attributs possibles de `<ol></ol>`
--------------------------------------

En HTML, il existe des attributs pour les balises `<ol></ol>`. Ces derniers permettent de modifier l'affichage des
listes ordonnées afin qu'elles s'adaptent au mieux à nos besoins.

### L'attribut `start="number"`

Cet attribut spécifie la valeur à partir de laquelle une liste commence. Prenons par exemple la liste précédente. Nous
souhaitons créer une nouvelle liste pour la reprendre. Puisque la liste précédente terminait avec le point **3**, nous
aimerions continuer cette liste avec le point
**4** comme ici :

4. Item 4
5. Item 5
6. Item 6

Ainsi, nous devons indiquer, dans notre balise `<ol></ol>` l'attribut
`start="4"` comme ceci :

````html

<body>
<ol start="4">
    <li>Item 4</li>
    <li>Item 5</li>
    <li>Item 6</li>
</ol>
</body>
````

L'attribut a toujours la forme suivante : `start="nombre"` où `nombre`
est remplacé par la valeur désirée.


Les attributs possibles de `<ol></ol>`
--------------------------------------

### L'attribut `type="valeur"`

Parfois, il est nécessaire d'avoir une liste avec l'ordre alphabétique ou les chiffres romains. Dans ces cas,
l'attribut `type` arrive à notre rescousse. Cet attribut permet de définir le type de points. La syntaxe est
simple `type="valeur"`. `valeur` prend les valeurs suivantes :

|**Valeur possible**|**Résultat**|
|---------------------|------------------------------------------|
|*1*|                   Liste numérique (*par défaut*)|
|*a*|                   Ordre alphabétique avec lettre minuscule|
|*A*|                   Ordre alphabétique avec lettre majuscule|
|*i*|                   Chiffre romain avec lettre minuscule|
|*I*|                   Chiffre romain avec lettre majuscule|

Les listes suivantes :

<ol>
    <li>Item 1</li>
    <li>Item 2</li>
</ol>
<ol type="a">
    <li>Item 1</li>
    <li>Item 2</li>
</ol>
<ol type="A">
    <li>Item 1</li>
    <li>Item 2</li>
</ol>
<ol type="i">
    <li>Item 1</li>
    <li>Item 2</li>
</ol>
<ol type="I">
    <li>Item 1</li>
    <li>Item 2</li>
</ol>

S'écrivent en HTML comme suit :

````html

<body>
<ol>
    <li>Item 1</li>
    <li>Item 2</li>
</ol>
<ol type="a">
    <li>Item 1</li>
    <li>Item 2</li>
</ol>
<ol type="A">
    <li>Item 1</li>
    <li>Item 2</li>
</ol>
<ol type="i">
    <li>Item 1</li>
    <li>Item 2</li>
</ol>
<ol type="I">
    <li>Item 1</li>
    <li>Item 2</li>
</ol>
</body>
````

Les attributs possibles de `<ol></ol>`
--------------------------------------

### L'attribut `reversed`

Cet attribut, sans valeur, indique au navigateur que la liste doit être décroissante. Ainsi, pour obtenir la liste
suivante :

<ol reversed>
    <li>Item 3</li>
    <li>Item 2</li>
    <li>Item 1</li>
</ol>

Il est nécessaire d'indiquer la liste avec l'attribut `reversed` comme suit :

````html

<body>
<ol reversed>
    <li>Item 3</li>
    <li>Item 2</li>
    <li>Item 1</li>
</ol>
</body>
````

|**Navigateur**|![Google Chrome](https://www.w3schools.com/images/compatible_chrome.gif)|![InternetExplorer/Edge](https://www.w3schools.com/images/compatible_edge.gif)|![Firefox](https://www.w3schools.com/images/compatible_firefox.png)|![Safari](https://www.w3schools.com/images/compatible_safari.gif)|![Opera](https://www.w3schools.com/images/compatible_opera.gif)|
|--------------|------------------------------------------------------------------------|-------------------------------------------------------------------------------|-------------------------------------------------------------------|-----------------------------------------------------------------|---------------------------------------------------------------|
|**Version minimale**|18.0|79.0|18.0|60|12.1|

Des listes dans des listes
--------------------------

Bien évidemment, il est possible d'ajouter une liste dans une liste. Pour y parvenir, il suffit d'ouvrir une nouvelle
balise `<ul></ul>` ou
`<ol></ol>` dans un élément de liste `<li></li>`. La liste suivante :

<body>
<ul>
    <li>
        Item 1
        <ol>
            <li>
                Sous-item 1
                <ul>
                    <li>Sous-sous item 1</li>
                    <li>Sous-sous item 2</li>
                </ul>
            </li>
            <li>Sous-item 2</li>
        </ol>
    </li>
    <li> Item 2
        <ul>
            <li>
                Sous-item 1
                <ol type="i">
                    <li>Sous-sous item 1 avec `type="i"`</li>
                    <li>Sous-sous item 2 avec `type="i"`</li>
                </ol>
            </li>
            <li>Sous-item 2</li>
        </ul>
    </li>
</ul>
</body>

Devient, en HTML,

````html

<body>
<ul>
    <li>
        Item 1
        <ol>
            <li>
                Sous-item 1
                <ul>
                    <li>Sous-sous item 1</li>
                    <li>Sous-sous item 2</li>
                </ul>
            </li>
            <li>Sous-item 2</li>
        </ol>
    </li>
    <li>Item 2
        <ul>
            <li>
                Sous-item 1
                <ol type="i">
                    <li>Sous-sous item 1 avec `type="i"`</li>
                    <li>Sous-sous item 2 avec `type="i"`</li>
                </ol>
            </li>
            <li>Sous-item 2</li>
        </ul>
    </li>
</ul>
</body>
````

Exemple #2 : La Charte des droits de la personne
-------------------------------------------------

Téléchargez le document *Charte des droits et libertés de la personne*
sur LÉA. Nous allons utiliser ce fichier texte pour créer un page web de quelques articles de la loi. Copiez le texte dans un fichier html que vous allez modifier avec cette mise en page :

- La mention du Code civil et de son chapitre doit être en **gras** et en *italique*.
- Le premier niveau du titre doit être la loi.
- L'avertissement doit être en **gras**.
- Le titre des parties doit être de niveau 2.
- Le titre des chapitres doit être d'un niveau inférieur à celui des parties.
- Chaque article doit commencer par le titre **Article 000**.
- L'indication des dates de modification, ce qui est sous les quatre tirets *----*, doit être surligné.
- Tous les alinéas ayant un numéro doivent être dans une liste numérotée.
- Chaque article, incluant le préambule, doit être incluse en un seul paragraphe (sauf lorsqu'il y a une liste).
    - Les sauts de lignes sont importants. Ils doivent être respectés.
- Lorsqu'un article est indiqué comme *Remplacé*, seul ce mot doit être en *italique*.

Les liens vers d'autres sites web ou ressources
-----------------------------------------------

### Qu'est-ce qu'un lien ?

Les liens sont des indications, au logiciel, où il est nécessaire de trouver un fichier, une ressource ou un site web.
Vous pouvez faire un parallèle avec les adresses civiles. Prenez l'adresse suivante : *960 rue Saint-Georges,
Drummondville, QC J2C 6A2*. Cette adresse peut être décortiquée comme suit :

- Le bâtiment porte le numéro **960**.
- Il est situé sur le chemin du nom **rue Saint-Georges**.
- Ce chemin se trouve dans la ville qui s'appelle **Drummondville**.
- Cette ville est dans la région **QC**.
- La ville est plus précisément dans le secteur **J2C 6A2**.

Avec ses informations, vous prenez n'importe quelle carte du pays et vous pouvez retrouver le cégep.

### Et dans un ordinateur ?

**Ici je prends les chemins Windows et non Unix, mais le principe est le même.**

Imaginez que vous cherchez le fichier `exemple.html` qui est dans le dossier `Web 1` lui-même situé dans le dossier
`Première session`. Ce dossier est placé dans le dossier `Cégep` qui est dans le dossier
`Documents`. Le dossier `Documents` est dans le dossier `Jean`
lui-même dans le dossier `Utilisateurs`. Enfin, ce dossier est situé sur le disque `C:`
(il s'agit de son nom dans le système).

Cet ensemble d'information en encodé dans l'ordinateur sous la forme d'un lien. Chaque dossier est séparé par le
caractère `\ ` (sous Windows, sous Linux ou le web s'est `/`). Ainsi, le chemin est alors :
`C:\Utilisateurs\Jean\Documents\Cégep\Première session\Web 1\exemple.html`.

### Finalement sur le web ?

Si vous recherchez le document sur un site web (ou un serveur FTP), le principe est exactement le même. Nous partons de
la **racine** du site
(soit le nom de domaine). Ensuite, on indique **chaque dossier** à parcourir. Toutefois, comparer à Windows, les
dossiers sont séparés par le caractère `/`.

#### Qu'est-ce que la racine du site web ?

Il s'agit de son nom de domaine (adresse ou URL) précédent du protocole de communication. Dans le cas des sites web, il
y a deux solutions :
`http://` ou `https://`. Vous devriez utiliser le deuxième.

Prenez un exemple, nos serveurs a comme nom de domaine `cegepdrummond.qc.ca` . Ainsi, pour y accéder, il suffit
d'indiquer le chemin suivant :
[https://cegepdrummond.ca](https://cegepdrummond.ca).


Petit exemple d'un chemin web
-----------------------------

Imaginons que nous souhaitons trouver le fichier
`tag_a.asp`. Ce dernier est situé sur la W3Schools [https://www.w3schools.com](https://www.w3schools.com). Le fichier
est placé dans un dossier qui se nomme
`tags`.

**Quel est le chemin ?**

Le chemin est simplement :
[https://www.w3schools.com/tags/tag_a.asp](https://www.w3schools.com/tags/tag_a.asp).


La différence entre chemin *relatif* et *absolu*
-------------------------------------------------

Tous les chemins que nous venons de travailler sont appelés des chemins
**absolus** car il commence à la racine du site `https://www.w3schools.com` ou du disque `C:``. Il permet de trouver un
endroit à partir de son origine dans le réseau. Dans le cas de l'adresse civile du cégep, notre racine sera la
province **QC** car il s'agit de la première région où nous pouvons rechercher sur une carte du pays.

Néanmoins, il existe aussi les chemins **relatifs**. Il s'agit d'un chemin qui commence, non pas à la racine, mais dans
un dossier.

### Les liens en HTML

Que ce soit pour permettre à un utilisateur d'aller à une autre page de votre site (lien relatif) ou vers un autre site
comme [https://cegepdrummond.ca](https://cegepdrummond.ca) (lien absolu) ou encore pour récupérer une ressource comme une image (nous
verrons ceci la semaine prochaine), le langage HTML utilise les liens web que nous venons de voir. Il utilise ses liens
dans des balises. Commençons simplement, pour cette semaine, par un lien pour l'utilisateur (hyperlien).


Lien vers un autre site, la balise *a* 
--------------------------------------------------------------------------------------------

[Référence](https://www.w3schools.com/tags/tag_a.asp)

````html
<a href="lien"></a>
````

Pour pouvoir ajouter un lien vers un autre site, il suffit d'utiliser la balise en paire `<a href="lien"></a>`. Cette
balise peut être ajoutée à un **paragraphe** ou directement dans notre **corps de page**
(`<body></body>`). Prenons l'exemple du *Jalousie du Barbouillé*, à la fin de notre page, nous avions le paragraphe
suivant :

````html
<p>
    Ce texte est tiré du texte de Charles Louandre publié en 1910. Ce texte est disponible sur le site Wikisource à
    l'adresse suivante : https://fr.wikisource.org/wiki/La_Jalousie_du_Barbouill%C3%A9/%C3%89dition_Louandre,_1910
</p>
````

Ce paragraphe contient un hyperlien vers un autre site (une page du site
[https://wikisource.org](https://wikisource.org)). Il serait utile de permettre à l'utilisateur de cliquer directement dessus pour 
l'utiliser. Heureusement, la balise `<a href="lien"></a>` est directement là pour ça.

### Comment utiliser `<a href="lien"></a>` ?

D'abord, les balises d'hyperlien doivent avoir **obligatoirement**
l'attribut `href="lien"` où nous remplaçons le mot `lien` par le lien web. De plus, à l'intérieur de la balise ouvrante
et de la balise fermante, nous allons ajouter le contenu à afficher (exemple un texte). Reprenons notre exemple
précédent. Le lien, qui sera la valeur de l'attribut `href`, sera simplement
[https://fr.wikisource.org/wiki/La_Jalousie_du_Barbouill%C3%A9/%C3%89dition_Louandre,_1910](https://fr.wikisource.org/wiki/La_Jalousie_du_Barbouill%C3%A9/%C3%89dition_Louandre,_1910)
et le contenu de la balise de simplement le lien. Ainsi, notre balise de paragraphe devient :

````html
<p>Ce texte est tiré du texte de Charles Louandre publié en 1910. Ce texte est disponible sur le site Wikisource à
    l'adresse suivante :
    <a href="https://fr.wikisource.org/wiki/La_Jalousie_du_Barbouill%C3%A9/%C3%89dition_Louandre,_1910">https://fr.wikisource.org/wiki/La_Jalousie_du_Barbouill%C3%A9/%C3%89dition_Louandre,_1910</a>
</p>
````

Simplifier le texte
-------------------

Malheureusement pour nous, ce genre de texte est compliqué et il peut être mal interprété. Le meilleur exemple est un
lecteur d'écran. Le lecteur va lire, à l'utilisateur, « lien
https://fr.wikisource.org/wiki/La_Jalousie_du_Barbouill%C3%A9/%C3%89dition_Louandre,_1910
».

Pour simplifier les choses, il est habituel d'utiliser une courte expression pour désigner qu'il s'agit d'un lien et que
ce lien a rapport avec notre phrase. Dans cet exemple, le plus simple et le plus efficace sont de remplacer la phrase :

Ce texte est disponible sur le site Wikisource à l'adresse suivante :
https://fr.wikisource.org/wiki/La_Jalousie_du_Barbouill%C3%A9/%C3%89dition_Louandre,_1910

Par la phrase suivante :

*Ce texte est disponible sur le site Wikisource.* Où le lien est ajouté au mot **Wikisource**. Donc, le paragraphe
devient :

````html
<p>Ce texte est tiré du texte de Charles Louandre publié en 1910. Ce texte est disponible sur le site <a
        href="https://fr.wikisource.org/wiki/La_Jalousie_du_Barbouill%C3%A9/%C3%89dition_Louandre,_1910">Wikisource</a>.
</p>
````

D'autres exemples
---------------

Si vous souhaitez lier votre site à celui d'un logiciel, votre lien sera avec le nom du logiciel.

Si vous souhaitez lier votre site à celui d'une entreprise, votre lien sera avec le nom de l'entreprise.

### Essayer avec notre page sur la charte

Remplacez l'hyperlien de notre exemple sur la *Charte des droits de la personne* par un lien plus clair. Petite
indication, le site des lois du Québec s'appelle **LégisQuébec**.

Le paragraphe :

````html
<p>
    <strong>
        ATTENTION ! CECI N'EST QU'UN EXTRAIT DE LA LOI TIRÉ DU SITE https://legisquebec.gouv.qc.ca/fr/ShowDoc/cs/C-12.
        IL NE S'AGIT NI D'UN AVIS JURIDIQUE NI D'UNE INTERPRÉTATION DE LA LOI. POUR TOUT QUESTIONNEMENT, CONSULTEZ UN
        JURISTE OU UN CONSEILLÉ JURIDIQUE.
    </strong>
</p>
````

Deviens :

````html
    <p>
    <strong>
        ATTENTION ! CECI N'EST QU'UN EXTRAIT DE LA LOI TIRÉ DU SITE DE
        <a href="https://legisquebec.gouv.qc.ca/fr/ShowDoc/cs/C-12">LÉGISQUÉBEC</a>.
        IL NE S'AGIT NI D'UN AVIS JURIDIQUE NI D'UNE INTERPRÉTATION DE LA LOI. POUR TOUT
        QUESTIONNEMENT, CONSULTEZ UN JURISTE OU UN CONSEILLÉ JURIDIQUE.
    </strong>
</p>
````

Ajouter un lien vers une autre page web
---------------------------------------

Jusqu'à maintenant, nos sites web sont simples. Ils comportent une seule page web. Maintenant, imaginons que nous
souhaitons lier plusieurs pages web. Puisque toutes ses pages sont contenues sur notre site, nous pouvons utiliser les
chemins relatifs. Prenons un exemple. Placer votre page web *La Jalousie du Barbouillé* et votre page web *Charte des
droits et libertés de la personne* dans le même dossier. Nous allons ajouter, à la fin de la page, un lien vers l'autre
page.

### De la page *La Jalousie du Barbouillé* vers la page *Charte des droits et libertés de la personne*

Primo, ajoutons une section appelée **Autres exemples du cours**. Dans cette section, ajoutons notre lien. Pour cela,
notre paragraphe sera simple. Utilisons la formule : « L'exemple suivant est la page sur la Charte des droits de la
personne. » Notre balise `<a href="lien"></a>`
aura comme contenu *Charte des droits de la personne*.

Le lien sera simple le chemin, depuis la page web, jusqu'à l'autre page web soit : `./charte_droits_personnes.html`.
Voici le résultat à ajouter à notre document à la fin :

````html
<h3>Autres exemples du cours</h3>
<p>
    L'exemple suivant est la page sur la <a href="./exercices/charte_droits_personnes.html">Charte des droits de la personne</a>.
</p>
````

On fait de même avec notre page de la charte :

````html
<h3>Autres exemples du cours</h3>
<p>
    L'exemple suivant est la pièce<a href="./exercices/jalousie_barbouillé.html">La Jalousie du Barbouillé</a>.
</p>
````

------------------------------------------------------------------------

Notes écrites par Godefroy Borduas, modifiées par Denis Rinfret et Pierre-Luc Boulanger.
