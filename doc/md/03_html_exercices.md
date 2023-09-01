# HTML: exercices 3

Questions de développement
--------------------------

### 1. Charte des droits et liberté de la personne

Reprenez notre code
de la semaine dernière. Nous allons ajouter différents éléments à cette page.

- Un entête avec le titre de la loi, le sous-titre (Code civil du Québec, chapitre C-12) et
  le [logo du Gouvernement du Québec](https://www.economie.gouv.qc.ca/fileadmin/contenu/documents_soutien/piv/qc_communication_numerique.zip)
- Ajouter une navigation entre les articles (table des matières)
- Inclure chaque article dans un conteneur `<article></article>`
- Ajouter un lien vers l'article original sur le site de *LégiQuébec* en partant de ce lien https://www.legisquebec.gouv.qc.ca/fr/document/lc/C-12.
    - L'identifiant pour la **PARTIE X** est `ga:l_x`
    - L'identifiant pour le **CHAPITRE X** de la **PARTIE X** est
      `ga:l_x-gb:l_x`
    - L'identifiant pour l'**ARTICLE 0** est `se:0`
- Les historiques de chaque article doivent être placées dans une infobulle sur un lien historique
- Chaque chapitre doit être dans un conteneur comme `<div></div>`.
- Chaque partie doit être dans une section.
- Le préambule est un article et il est sa propre section.
- Chaque article, chapitre et section doivent avoir un identifiant.
- Ajouter une section contactez-nous avec un titre, une zone de texte ainsi qu'un bouton soumettre qui ne fait rien.
- Ajouter un article dans une balise `<details></details>` et ajouter le titre dans le sommaire.

### 2. PIÉA du Collège

Prenez la PIÉA du collège. Cette dernière est disponible dans LÉA.
Réalisez une page web similaire à celle de l'exercice précédent. Je vous rappelle les critères.

- Un en-tête avec le titre de la politique, le nom du collège et le logo du Cégep
- Ajouter une navigation entre les articles (table des matières)
- Chaque chapitre, les sections avec un titre avec un seul chiffre, doit être dans une section.
- Inclure chaque article, les textes qui sont précédés par un titre avec deux chiffres, dans un
  conteneur `<article></article>`.
- Chaque sous-article doit être dans un conteneur.
- Ajouter un lien vers le document d'origine.
- Chaque article, chapitre et section doivent avoir un identifiant.
- Faites les articles 3.14 à 3.16 et 4.1.
- Rendez la page compatible avec les versions antérieures à Internet Explorer 9.

------------------------------------------------------------------------

Notes écrites par Godefroy Borduas, modifiées par Denis Rinfret et Pierre-Luc Boulanger.
