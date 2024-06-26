# Bibliothèque Rails

Ce projet est une application de gestion de bibliothèque construite avec Ruby on Rails. Il permet aux utilisateurs de s'inscrire, de se connecter, de consulter et d'emprunter des livres.

## Lien vers le Gist

[Projet Bibliothèque Rails](https://gist.github.com/wRadion/89ac70695a6c6036097707d63b48e1f2)

## Installation et Lancement du Projet

### Prérequis

- Ruby (version 3.3.3)
- Rails (version 6.1.0 ou supérieure)
- SQLite3

### Étapes d'Installation

1. Clonez le dépôt du projet :
   ```bash
   git clone <URL_DU_DÉPÔT>
   cd Bibliotheque
   ```

2. Installez les dépendances :

    ```bash
    bundle install  
    ```
3. Configurez la base de données :

    ```bash
    rails db:create
    rails db:migrate
    ```

4. Lancez le serveur Rails :

    ```bash
    rails server
    ```

## Routes Disponibles
### Utilisateurs
- GET /register : Affiche la page de création de compte.
- POST /register : Crée un nouveau compte utilisateur.
- GET /login : Affiche la page de connexion.
- POST /login : Connecte l'utilisateur.
- DELETE /logout : Déconnecte l'utilisateur.
- GET /account : Affiche la page de modification du compte.
- PATCH /account : Met à jour les informations du compte.

### Livres
- GET /books : Affiche la liste des livres.
- GET /books/:id : Affiche les détails d'un livre.
- POST /books : Crée un nouveau livre (si la fonctionnalité est ajoutée).
- PATCH /books/:id : Met à jour un livre (si la fonctionnalité est ajoutée).
- DELETE /books/:id : Supprime un livre (si la fonctionnalité est ajoutée).

### Emprunts
- POST /borrows : Crée un nouvel emprunt.
- DELETE /borrows/:id : Termine un emprunt.