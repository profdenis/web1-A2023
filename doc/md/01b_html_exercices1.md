# HTML: exercices 1

Cette série d'exercices couvre la matière vue durant le cours sur **Les base du HTML**. Chaque section
correspond à un exercice. Vous y trouverez, en premier lieu, la question. En dessous, vous trouverez la solution à
l'exercice. Il suffit de déplier la section pour obtenir la solution [**après avoir essayé**].

Questions courtes
-----------------

### 1. Balise de déclaration *DOCTYPE*

Répondez aux questions suivantes :

- Est-il obligatoire d'écrire la déclaration DOCTYPE dans une page web et pourquoi ?
- Quel est l'emplacement de la déclaration DOCTYPE dans une page web ?
- Quelle est la déclaration (balise) DOCTYPE pour une page web écrite en **HTML5** ?
  <details>
  <summary>Réponse</summary>

    - Oui, la déclaration DOCTYPE est obligatoire pour toutes les pages Web. Elle précise au navigateur comment lire la
      page Web(savoir quelle version de HTML utilisée).
    - La déclaration DOCTYPE doit être placée en début de fichier et avant la balise `<html></html>`
    - La déclaration DOCTYPE pour HTML5 est très simple : `<!DOCTYPE html>`
  </details>

### 2. Titre d'une page web

Parmi les balises suivantes, laquelle est utilisée pour donner à un site web le titre **Mon site web** ?

1. `<html>Mon site web</html>`
2. `<head>Mon site web</head>`
3. `<title>Mon site web</title>`
4. `<body>Mon site web</body>`
<details>
  <summary>Réponse</summary>
    La bonne balise est le choix 3. Le titre qui sera affiché est le texte contenu entre la balise ouvrante et la balise fermante.
</details>


### 3. Configurer le jeu de caractères (encodage) d'une page web

Comment pouvons-nous définir le jeu de caractères (encodage) d'une page web ? 
<details>
  <summary>Réponse</summary>
Il faut utiliser la balise suivante : <pre>&lt;meta charset="utf-8"></pre>
</details>

### 4. Balise pour les éléments à afficher

Dans quelle balise devons-nous ajouter les éléments à afficher
(paragraphe, image, vidéo, etc.) ? 
<details>
  <summary>Réponse</summary>
Il faut utiliser la balise <code>body</code> comme ceci :
<pre>&lt;body>
&lt;p>Ceci est un élément à afficher.&lt;/p>
&lt;/body></pre>
<strong>Note</strong> : La balise <code>p</code> utilisée est placée ici pour l'exemple. Vous pouvez ajouter beaucoup plus de balises.
</details>

### 5. Balise pour les sauts de ligne

Quelle est la balise pour ajouter un saut de ligne dans un paragraphe ou un texte
<details>
  <summary>Réponse</summary>
Il faut utiliser la balise <code>br</code> comme ceci :
<pre>&lt;body>
&lt;p>Ceci est un élément à afficher.&lt;br>
Ceci est un élément à afficher sur une autre ligne.&lt;/p>
&lt;/body></pre>
</details>

### 6. Métadonnée du site web

Dans quelle balise ajoute-t-on les métadonnées du site web ?
<details>
  <summary>Réponse</summary> 

Nous ajoutons les
métadonnées dans la balise <code>head</code> comme ceci :
<pre>
&lt;head>
    &lt;meta charset="utf-8">
    &lt;title>Mon site web&lt;/title>
&lt;/head></pre>
</details>

------------------------------------------------------------------------

Notes écrites par Godefroy Borduas, modifiées par Denis Rinfret et Pierre-Luc Boulanger.