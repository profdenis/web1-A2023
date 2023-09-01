Le fichier HTML
===============

Dans votre éditeur, nous avons déjà un fichier **index.html**. Par convention, la première page d'un site web s'appelle `index`. Sélectionnez
toujours le format
*Hypertext Markup Language* (`.html`). Assurez-vous que l'extension est bien `.html`

De plus, tous les documents (images, fichier css, etc.) devront être dans le même dossier que votre fichier HTML.


Que se passe-t-il si nous ajoutons seulement du texte ?
-------------------------------------------------------

```html
<h1>Bonjours tout le monde!</h1>
<p>Je m'appelle XYZ</p>
```

Nous avons vu précédemment, que le navigateur va simplement afficher votre texte. Mais, nous allons voir plus loin qu'il faut ajouter autre chose pour former un document HTML complet.

Termes de base du HTML
----------------------

Maintenant que nous avons vu comment créer notre fichier, parlons un peu des termes de base du HTML.

### Éléments

Un élément est séparé en 4 composantes: 

  * Une balise ouvrante
  * Des attributs
  * Le contenu
  * Une balise fermante 

```html
  <h3 id="sousTitre">Comment ça va!</h3>
```
Le nom de l'élément dans l'exemple s'appelle h3. Seule la balise ouvrante et fermante est obligatoire! 

### Balises

Les **balises** sont à la base des documents HTML. Ces derniers ne sont pas affichés à l'écran, mais il renvoie des
informations essentielles au navigateur. Ce sont les balises qui présentent la structure de la page. Elles décrivent la
nature ou comment afficher du texte (ex. un tableau, du texte dans un conteneur, etc.) Elle permet aussi d'afficher une
image, une vidéo, etc.

Les balises sont toujours entre chevrons `<` et `>` comme ceci :
`<nom></nom>`. Il existe **2 types** de balises : en paires et orphelines.

#### Balise en paires

Représente la majorité des balises. Le contenu de la balise est toujours situé entre la *balise ouvrante* `<balise>` et
la *balise fermante*
`</balise>`.

La balise ouvrante est toujours de la forme `<balise>` où *balise* est le type.

La balise fermante est comme la balise ouvrante, mais le type est précédé du caractère `/` comme ceci : `</balise>`.

```html
Le texte suivant est dans une balise en paire appelée cellule.

<cellule>Ceci est dans une balise en paire appelée cellule.</cellule>
```

#### Balise orpheline

Une balise orpheline est décrite seulement par la balise ouvrante
`<balise_Orpheline>`. Ces balises servent en général ajouter, au document, une image ou une vidéo par exemple.

Certain utilise aussi la notation `<balise_Orpheline />` afin de distinguer les balises en paire des balises orphelines.

```html
Le texte suivant est dans une balise orpheline.

<texte "Ceci est une balise orpheline" >

Cette autre balise est équivalente à la balise précédente.

<texte "Ceci est une balise orpheline encore" />
```

### Attribut

Parfois, il faut spécifier une valeur aux balises. Il s'agit d'une information utilisée par le navigateur afin de
permettre de spécifier un format d'affichage. Les attributs ont toujours la forme suivante :
`nomAttribut="valeur de l'attribut"`

Dans l'exemple suivant, l'attribut `auteur` spécifie le nom de l'auteur de la citation tandis que l'attribut `date`
spécifie la date de celle-ci.

```html

<citation auteur="Le meilleur prof du monde" date="31 août">
    Le meilleur prof du monde est sans hésiter Godefroy !
</citation>
```

### ATTENTION !

Les balises précédentes ne sont pas de vraie balise et attribut.

<div style="page-break-after: always;"></div>

La page de base
---------------

En HTML5, les pages Web ont toujours la même base :

```html
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="utf-8">
    <title>Titre du site web</title>
</head>
<body>
</body>
</html>
```

### La balise `DOCTYPE`

[Référence](https://www.w3schools.com/tags/tag_doctype.asp)

Cette balise est située en début de fichier. Il permet de spécifier au navigateur comment doit-il interpréter le code de
la page. Cette valeur change selon la version de HTML. Dans notre cours, nous sommes en
**HTML5**.

#### HTML5

```html
<!DOCTYPE html>
```

#### HTML 4.01

```html
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
```

#### XHTML 1.1

```html
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
```

#### HTML 3.0

```html
<!DOCTYPE HTML public "-//W3O//DTD W3 HTML 3.0//EN">
```

### La balise `html`

[Référence](https://www.w3schools.com/tags/tag_html.asp)

La balise `<html></html>` est la base du document. Elle indique au navigateur ce qui fait partie de la page web. Toutes
vos balises doivent être incluses à l'intérieur de celle-ci.

### La balise `head`

[Référence](https://www.w3schools.com/html/html_head.asp)

La balise `<head></head>` contiens l'ensemble des *métadonnées* de la page web. Ces métadonnées sont des informations
fournies au navigateur afin qu'il comprenne comment la page sera affichée.

À l'intérieur de cette balise, nous retrouverons les indications pour ajouter les styles, les indications aux moteurs de
recherche et au titre du site (qui sera affiché dans l'onglet du navigateur). **Aucune balise** présente à
l'intérieur **ne sera affichée** au visiteur.

### La balise `meta`

[Référence](https://www.w3schools.com/tags/tag_meta.asp)

La balise `<meta>`, qui est une balise orpheline, contient des informations sur la page web. Ces informations sont
utilisées par le navigateur pour comprendre comment lire la page. C'est la même chose pour les moteurs de recherche.

Dans cet exemple, notre balise meta définit l'attribut `charset`. Il s'agit du jeu de caractères. En gros, cette balise,
avec cet attribut, indique au navigateur comment sont enregistrés les caractères. La valeur utilisée est `utf-8`. Vous
n'avez pas besoin de le changer puisqu'il s'agit du codage le plus courant aujourd'hui.

Il existe d'autres balises meta :

- `<meta name="description" content="Description du site">` : Permet d'ajouter une description du site web
- `<meta name="keywords" content="HTML, CSS, JavaScript">` : Permet de définir des mots clés, pour les moteurs de
  recherche, concernant votre site
- `<meta name="author" content="John Doe">` : Permet de définir l'auteur du site.

Ces balises `meta` ne sont pas obligatoires et ils sont parfois simplement ignorés par les créateurs.

### La balise `title`

[Référence](https://www.w3schools.com/tags/tag_title.asp)

La balise `<title></title>` permets d'indiquer le nom de la page web. Le navigateur utilisera le contenu de cette balise
pour le texte inclus dans l'onglet du navigateur. La balise contiendra uniquement des caractères.

Dans l'exemple précédent, la page contient le code suivant :

```html
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="utf-8">
    <title>Le titre de nom site dans title</title>
</head>
<body>
<p>Cette page contient un code de base.</p>
</body>
</html>
```

### La balise `body`

[Référence](https://www.w3schools.com/tags/tag_body.asp)

La balise `<body></body>` définit le corps du document. C'est à l'intérieur de ce dernier que nous ajoutons les éléments
afficher au visiteur du site. Il est important de noter que la balise `body` est
*unique*.


Comment afficher du texte
-------------------------

L'un des premiers éléments à afficher est un texte. Nous utilisons la base `<p></p>`. Votre navigateur comprend alors
que tout ce qui se trouve dans la base doit être considéré comme du texte.

```html
<p>Bonjours tout le monde ! Mon site fonctionne correctement.</p>
```

### Effectuer un saut de ligne

Parfois, il est nécessaire de s'assurer que votre texte soit sur deux lignes séparées. Néanmoins, si vous ajoutez des
sauts de ligne, ceux-ci n'apparaîtront pas dans votre page. Exemple :

```html
<p>Bonjours tout le monde !

    Mon site fonctionne correctement.</p>
```

Il faut utiliser la balise orpheline `<br >`. Elle indique un saut et un retour de ligne. De plus, le client ne verra
jamais la balise. Il verra simplement le saut de ligne.

```html
<p>Bonjours tout le monde !
    <br>
    <br>
    Mon site fonctionne correctement.</p>
```

Qui est équivalent à :

```html
<p>Bonjours tout le monde !<br><br>Mon site fonctionne correctement.</p>
```

### Afficher un second paragraphe

Dans un site web, nous pouvons ajouter autant de paragraphes que souhaité. Dans l'exemple suivant, il y a deux
paragraphes. Il y aura un saut de ligne automatique entre les deux paragraphes.

```html
<p>Bonjours tout le monde !
    <br>
    <br>
    Mon site fonctionne correctement.</p>

<p>Ceci est un second paragraphe.</p>
```

Le code complet de la page web est :

```html
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="utf-8">
    <title>Le titre de nom site dans title</title>
</head>
<body>
<p>Bonjours tout le monde !<br>Voilà<br><br>Mon site fonctionne correctement.</p>
<p>Ceci est un second paragraphe.</p>
</body>
</html>
```

------------------------------------------------------------------------

Notes écrites par Godefroy Borduas, modifiées par Denis Rinfret et Pierre-Luc Boulanger.
