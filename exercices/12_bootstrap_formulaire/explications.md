<style>
body {
        max-height: 1024px;
        max-width: 800px;
        /* to centre page on screen*/
        margin-left: auto;
        margin-right: auto;
}
</style>


# Explication de l'exemple

L'objectif est de modifier la page `index.html`, `produits.html` et `ordinateur-1.html` pour ajouter les classes **Bootstrap** manquantes, ainsi que les icônes de **Bootstrap**.

## Page Index

Pour la page index, il faut ajouter un formulaire et des icônes.

Voici le résultat final pour grand écran : 

![Résultat](./images/r%C3%A9sultat-grand.jpg)

et pour la version tablette ou mobile : 

![Résultat](./images/r%C3%A9sultat-tablette.jpg)

Voici la liste des icônes manquantes avec le terme à chercher :
- [ ] Une maison (house)
- [ ] Une personne (person)
- [ ] Un cercle d'information (circle et info
- [ ] Un emoji fâché (angry)
- [ ] Un icône d'envoie (send)

J'ai mis toutes les places ayant besoin d'une icône entre crochet []

Pour le formulaire, vous devez ajouter les champs textes et la case à cocher.
Assurez-vous d'utiliser la grille Bootstrap pour placer chaque élément. 3 cases pour le `label` et 9 cases pour les champs devraient faire l'affaire.

Voici une liste de classes Bootstrap qui pourraient être utiles :
- [ ] `input-group`
- [ ] `input-group-text`
- [ ] `form-control`
- [ ] `form-control-label`
- [ ] `btn`
- [ ] `btn-primary`
- [ ] `btn-danger`
- [ ] `btn-lg`

## Page Produits

Voici le résultat final pour grand écran : 

![Résultat](./images/r%C3%A9sultat-produits.jpg)

Pour la version mobile et tablette, les éléments doivent être en colonne ou lieu d'en ligne.
L'objectif est d'ajouter les classes Bootstrap pour que le contenu soit sous forme de carte (`card`).

Voici une liste de classes Bootstrap qui pourraient être utiles pour les ordinateurs :
- [ ] `card`
- [ ] `card-body`
- [ ] `card-title`
- [ ] `card-text`
- [ ] `card-footer`
- [ ] `text-muted`
- [ ] `card-img-top`

Pour l'alerte :
- [ ] `bi-cash-coin`
- [ ] `bi-exclamation-triangle`
- [ ] `bi`
- [ ] `alert`
- [ ] `alert-warning`
- [ ] `alert-dismissible`

Ajoutez des badges dans les titres des ordinateurs (`badge` et une couleur `text-bg-*`).

Ajoutez un bouton avec `popover` à la place du texte "Choisissez-moi!".

## Le menu Dropdown

Ajouter un choix d'ordinateurs dans le menu comme on peut voir sur cette image :

![Résultat](./images/r%C3%A9sultat-produits.jpg)

Pour cela, vous devez ajouter à l'intérieur du `<li class="nav-item dropdown">` un hyperlien de avec la classe `.dropdown-toggle` et `.nav-link`.

Pour le choix, c'est une liste non-ordonnée avec la classe `.dropdown-menu`. À l'intérieur des `<li>`, il faut ajouter des hyperliens avec la classe `.dropdown-item`. Vous pouvoez faire pointer les hyperliens vers la même page `ordinateur-1.html`.

En cas de doute, n'hésitez pas à consulter les exemples **Bootstrap**.

## Page ordinateur 1

Voici le résultat sur grand écran :

![Résultat](./images/r%C3%A9sultat-ordinateur.jpg)

Il reste à ajoutez les éléments manquants pour faire un accordéon. Dans le HTML vous pouvez trouver cela dans le div `id="ex-accordion"`.

Voilà! C'est tout pour l'exercice. N'hésitez pas à améliorer le code.
