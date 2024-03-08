# Exercice SQL campus

Vous trouverez ci-joint un fichier SQL contenant la base de données du disquaire ainsi que les données.

---

### Exercice 1 : 🚀 Concevoir sa base de données

À l'aide de votre outil favori, concevez et créez un schéma de base de données intégrant les différentes tables présentées ci-après.

#### Partie A : Les tables.

**Création de la table des activités :**
Le campus organise diverses activités pour ses étudiants. Créez une table `activity` qui recense ces activités :

- `name` : le nom sous lequel l'activité est connue.
- `description` : un bref texte décrivant ce que l'activité implique.
- `place` : l'endroit où l'activité se déroule sur le campus.
- `date` : la date et l'heure précises de l'activité.

**Création de la table des étudiants :**
Créez une table `student` pour représenter chacun des étudiants et inclure :

- `name` : le nom de famille de l'étudiant.
- `surname` : le prénom de l'étudiant.
- `birthdate` : la date de naissance, pour célébrer leurs anniversaires !
- `email` : leur adresse électronique, pour toutes les communications officielles.

**Création de la table des logements :**
Certains étudiants résident sur le campus. Créez une table `accommodation` avec les détails suivants :

- `number` : un numéro unique identifiant le logement.
- `rent` : le montant du loyer mensuel pour ce logement.
- `description` : une description du logement, qui pourrait inclure le nombre de pièces ou d'autres aménagements.

**Création de la table des départements :**
Chaque département du campus se spécialise dans un domaine d'étude différent. Créez une table `department` qui contient :

- `name` : le nom du département, tel que "Département d'Informatique" ou "Département de Littérature".

**Création de la table des spécialités :**
Au sein de chaque département, il y a des spécialités plus ciblées. Créez la table `speciality` pour les répertorier :

- `name` : le nom de la spécialité, comme "Génie Logiciel" ou "Poésie Moderne".
- `description` : une description de ce que cette spécialité englobe ou vise comme compétences chez les étudiants.

#### Partie B : Les relations.

Chaque étudiant est rattaché à un et un seul département, alors qu'un département peut compter un nombre variable d'étudiants, allant de zéro à plusieurs.

Un étudiant peut avoir zéro ou un logement attribué sur le campus, et chaque logement peut être attribué à zéro ou un étudiant, indiquant qu'il peut y avoir des logements non occupés.

Les étudiants ont la possibilité de s'engager dans une multitude d'activités, aucune limite n'est fixée au nombre d'activités auxquelles ils peuvent participer. De même, une activité peut accueillir un nombre quelconque d'étudiants, ce nombre pouvant aller de zéro à plusieurs.

En ce qui concerne les spécialités académiques, chaque département est lié à une unique spécialité. De même, chaque spécialité est associée à un seul département, soulignant une relation de correspondance directe et exclusive entre les deux.

---