<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Maëlys François - Portfolio</title>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"></script>
    
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            color: #333;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        /* --- Style du Menu de Navigation (Header) --- */
        .header {
            display: flex;
            /* Changé pour aligner le titre à gauche et le menu à droite */
            justify-content: space-between; 
            align-items: center;
            padding: 15px 30px;
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        
        /* Titre du site (votre nom) */
        .site-title {
            font-size: 1.5em; /* Taille légèrement augmentée */
            font-weight: bold;
            color: #333;
            text-decoration: none;
            /* Ajout d'une marge à gauche pour ne pas coller au bord */
            margin-left: 10px; 
        }

        /* Conteneur des liens du menu */
        .nav-links {
            display: flex;
            gap: 25px; /* Espace entre les liens du menu */
        }

        /* Nouveau style pour les liens du menu (simples liens de site web) */
        .nav-link {
            font-size: 16px;
            font-weight: 500;
            text-decoration: none;
            color: #333; /* Couleur du texte noir/gris */
            transition: color 0.3s ease;
        }

        .nav-link:hover {
            color: #0077b5; /* Bleu au survol */
        }

        /* --- Style des Boutons de Contact (Footer) --- */
        
        /* Remise à zéro des styles de boutons non utilisés dans le header */
        .button {
            display: inline-block;
            padding: 10px 18px; /* Réajustement du padding pour les boutons du footer */
            font-size: 14px;
            font-weight: bold;
            text-align: center;
            text-decoration: none;
            border-radius: 5px;
            transition: all 0.3s ease;
            cursor: pointer;
        }

        /* Styles Pied de Page (inchangés) */
        .button.linkedin {
            background-color: #0077b5;
            color: white;
        }

        .button.linkedin:hover {
            background-color: #005f84;
        }

        /* Nouveau Style pour "Mon Email" - remis à la couleur de l'email pour uniformité si souhaité */
        .button.email {
            background-color: #e44d26; /* Couleur de l'email */
            color: white;
        }

        .button.email:hover {
            background-color: #b43d19; /* Couleur plus foncée au survol */
        }

        .button.cv {
            background-color: #4CAF50;
            color: white;
        }

        .button.cv:hover {
            background-color: #45a049;
        }
        
        /* Ajouter un peu d'espace entre l'icône et le texte */
        .button i {
            margin-right: 8px;
        }

        /* --- Style du Contenu Principal (Bouton Central) --- */
        .main-content {
            flex-grow: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            text-align: center;
            padding: 20px;
        }

        .main-button {
            background-color: #0077b5;
            color: white;
            padding: 20px 40px;
            font-size: 24px;
            border-radius: 8px;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }

        .main-button:hover {
            background-color: #005f84;
        }

        .welcome-title {
            font-size: 32px;
            margin-bottom: 30px;
            font-weight: 300;
        }

        /* --- Style du Pied de Page (Footer) --- */
        .footer {
            /* J'ai utilisé 20px pour la hauteur pour un bon équilibre */
            padding: 20px 30px; 
            background-color: #fff;
            box-shadow: 0 -2px 4px rgba(0,0,0,0.1);
            text-align: center;
        }
        
        .footer-buttons {
            display: flex;
            justify-content: center;
            gap: 15px;
        }

    </style>
</head>
<body>

    <div class="header">
        <a href="index.html" class="site-title">Maëlys François</a>
        
        <div class="nav-links">
            <a href="projets.html" class="nav-link">
                Mes Projets
            </a>
            
            <a href="about.html" class="nav-link">
                À Propos de moi
            </a>
        </div>
    </div>

    <div class="main-content">
        <h1 class="welcome-title">Bienvenue sur mon Portfolio d'Analyste de données sociales</h1>
        
        <a href="projets.html" class="main-button">
            Voir Mes Projets
        </a>
    </div>

    <footer class="footer">
        <div class="footer-buttons">
            <a href="https://www.linkedin.com/in/ma%C3%ABlys-fran%C3%A7ois" class="button linkedin" target="_blank">
                <i class="fab fa-linkedin"></i> LinkedIn
            </a>
            
            <a href="mesdocuments/cv_maëlys_françois.pdf" class="button cv" target="_blank" rel="noopener noreferrer">
                <i class="fas fa-file-pdf"></i> Mon CV
            </a>
            
            <a href="mailto:maelys.francois31@gmail.com" class="button email">
                <i class="fas fa-envelope"></i> Mon Email
            </a>
        </div>
    </footer>

</body>
</html>
