# HTML: exercices 2

Questions courtes
---------------------------------------------------------

### 1. Nommez les balises

Donnez la signification des balises suivantes :

1. `<a href="mapage2.html">Ici</a>`
2. `<em>Mon texte</em>`
3. `<mark>mon message</mark>`
4. `<ol start=4 reversed><li>item 5</li><li>item 6</li></ol>`

<details>
  <summary>Réponse</summary> 

1. Le mot **Ici** est un lien vers la page web `mapage2.html`.
2. Le texte **Mon texte** est en italique.
3. Le texte **mon message** est surligné.
4. Il s'agit d'une liste de deux items qui commence avec le nombre 4 et qui est décroissante.

</details>

### 2. Donnez le chemin web

1. Quel est le chemin pour le fichier `mapage.html` contenu dans le dossier **Drummondville**. Ce dossier est dans le
   dossier **cours**
   lui-même un dossier du serveur **exemple.quebec**.
2. Quel est le chemin pour le fichier `image.png` situé dans le dossier **images** lui-même situé dans le dossier **
   media**. Ce dossier est situé dans le même répertoire (dossier) que le fichier qui appelle cette image ?

<details>
  <summary>Réponse</summary> 

1. `http://exemple.quebec/cours/Drummondville/mapage.html`
2. `./media/image/images/image.png</code>`

</details>

### 3. Ordre des titres

Est-ce que les titres suivants sont dans le bon ordre ? Nous parlons des niveaux.

```html
<h5>Une coche de moindre importance</h5>
```

```html
<h1>Grande importante</h1>
```

```html
<h2>Seconde importante</h2>
```

<details>
  <summary>Réponse</summary> 

Non, le titre de niveau 5 devrait être après le titre de niveau 2. De plus, il devrait être de niveau 3 pour suivre
l'ordre.
</details>

Questions de développement
---------------------------------------------------------------------------

### 4. Liste 1

Créer un page web qui dresse une liste des villes les plus peuplées au Québec. Prenons les dix premières seulement.
Fiez-vous à ce
[lien](https://fr.wikipedia.org/wiki/Liste_des_municipalit%C3%A9s_du_Qu%C3%A9bec_par_population)
pour avoir les résultats.
<details>
  <summary>Réponse</summary> 

```html

<ol>
    <li>Montréal</li>
    <li>Québec</li>
    <li>Laval</li>
    <li>Gatineau</li>
    <li>Longueuil</li>
    <li>Sherbrooke</li>
    <li>Saguenay</li>
    <li>Lévis</li>
    <li>Trois-Rivières</li>
    <li>Terrebonne</li>
</ol>
```

</details>

### 5. Liste 2

Dans la même page web que la liste précédente, ajoutez une seconde liste des villes les moins peuplées de
la [liste suivante](https://fr.wikipedia.org/wiki/Liste_des_municipalit%C3%A9s_du_Qu%C3%A9bec_par_population).
Intéressez-vous uniquement aux 10 dernières villes. De plus, placez cette liste dans l'ordre inverse.

<details>
  <summary>Réponse</summary> 

```html

<ol start="50" reversed>
    <li>Varennes</li>
    <li>Beloeil</li>
    <li>L'Assomption</li>
    <li>Saint-Lambert</li>
    <li>La Prairie</li>
    <li>Sept-Îles</li>
    <li>Thetford Mines</li>
    <li>Magog</li>
    <li>Sainte-Thérèse</li>
    <li>Saint-Bruno-de-Montarville</li>
</ol>
```

</details>

### 6. Liste 3

Au deux listes précédentes, ajoutez entre parenthèse la région administrative de la ville. De plus, le nom de la région
doit être en italique.
<details>
  <summary>Réponse</summary> 

```html

<ol>
    <li>Montréal (<em>Montréal</em>)</li>
    <li>Québec (<em>Capitale-Nationale</em>)</li>
    <li>Laval (<em>Laval</em>)</li>
    <li>Gatineau (<em>Outaouais</em>)</li>
    <li>Longueuil (<em>Montérégie</em>)</li>
    <li>Sherbrooke (<em>Estrie</em>)</li>
    <li>Saguenay (<em>Saguenay–Lac-Saint-Jean</em>)</li>
    <li>Lévis (<em>Chaudière-Appalaches</em>)</li>
    <li>Trois-Rivières (<em>Mauricie</em>)</li>
    <li>Terrebonne (<em>Lanaudière</em>)</li>
</ol>
<ol start="50" reversed>
    <li>Varennes (<em>Montérégie</em>)</li>
    <li>Beloeil (<em>Montérégie</em>)</li>
    <li>L'Assomption (<em>Lanaudière</em>)</li>
    <li>Saint-Lambert (<em>Montérégie</em>)</li>
    <li>La Prairie (<em>Montérégie</em>)</li>
    <li>Sept-Îles (<em>Côte-Nord</em>)</li>
    <li>Thetford Mines (<em>Chaudière-Appalaches</em>)</li>
    <li>Magog (<em>Estrie</em>)</li>
    <li>Sainte-Thérèse (<em>Laurentides</em>)</li>
    <li>Saint-Bruno-de-Montarville (<em>Montérégie</em>)</li>
</ol>
```
</details>

### 7. Liste 4

Toujours aux mêmes listes, ajoutez, après la région administrative, la taille de la population au 1er juillet 2016. Ce
nombre doit être en gras.

### 8. Titre

Donnez un titre de niveau 1 à votre page. De plus, séparez les deux listes par des titres de niveau approprié.

### 9. Liste 5 et texte surligné

En vous basant sur le tableau suivant :

|Rang| Municipalité| Région administrative| Population| Superficie en km²| Densité en hab./km²|
|------|---------------------|-----------------------|------------|-------------------|---------------------|
|32| Côte-Saint-Luc| Montréal| 34 066| 6,81| 5 061| 
|1| Montréal| Montréal| 1 765 616| 365,65| 4 662| 
|19| Dollard-Des Ormeaux| Montréal| 51 050| 14,99| 3 416| 
|42| Sainte-Thérèse| Laurentides| 26 847| 9,4| 2 765|
|47| Saint-Lambert| Montérégie| 22 490| 10,1| 2 250|
|5| Longueuil| Montérégie| 246 899| 116,00| 2 128|
|12| Brossard| Montérégie| 87 215| 45,2| 1 947|
|3| Laval| Laval| 437 413| 247,09| 1 770|
|35| Pointe-Claire| Montréal| 32 301| 18,94| 1 657|
|23| Châteauguay| Montérégie| 48 741| 35,37| 1 387|

Ajoutez, dans une nouvelle section, une liste à puce de ces villes. Vous devez
indiquer le nom de la ville, le nom de sa région administrative en italique, la taille de population en gras et la
densité de population. De plus, vous devez surligner toutes les villes qui font partie de la première et de la seconde
liste.

### 10. Lien vers les villes

Ajouter une dernière section. Cette section contiendra un paragraphe avec
un lien vers le site web des villes que vous avez surligné le nom dans l'exercice précédent.


------------------------------------------------------------------------

Notes écrites par Godefroy Borduas, modifiées par Denis Rinfret et Pierre-Luc Boulanger.
