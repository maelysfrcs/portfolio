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
            /* Utilisation du flex pour positionner le footer en bas */
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        /* --- Style du Menu de Navigation (Header) --- */
        .header {
            display: flex;
            justify-content: flex-end; /* Aligne le contenu à droite */
            align-items: center;
            padding: 15px 30px;
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        
        /* Conteneur des boutons du menu */
        .nav-buttons {
            display: flex;
            gap: 10px; /* Espace entre les boutons du menu */
        }

        /* --- Style des Boutons (réutilisation de votre CSS et ajouts) --- */
        .button {
            display: inline-block;
            padding: 10px 18px;
            font-size: 14px;
            font-weight: bold;
            text-align: center;
            text-decoration: none;
            border-radius: 5px;
            transition: all 0.3s ease;
            cursor: pointer;
        }

        /* Bouton Menu Principal (Mes Projets) */
        .button.menu-projects {
            background-color: #555; /* Gris */
            color: white;
        }

        .button.menu-projects:hover {
            background-color: #333;
        }

        /* Nouveau Style pour "À Propos de moi" (Orange de l'Email) */
        .button.menu-about {
            background-color: #e44d26; /* Orange souhaité */
            color: white;
        }
        
        .button.menu-about:hover {
            background-color: #b43d19; /* Orange foncé */
        }

        /* Styles Pied de Page (réutilisés) */
        .button.linkedin {
            background-color: #0077b5;
            color: white;
        }

        .button.linkedin:hover {
            background-color: #005f84;
        }

        /* Nouveau Style pour "Mon Email" (couleur différente : Violet) */
        .button.email {
            background-color: #8A2BE2; /* Violet (BlueViolet) */
            color: white;
        }

        .button.email:hover {
            background-color: #6A1FB8; /* Violet foncé */
        }

        .button.cv {
            background-color: #4CAF50;
            color: white;
        }

        .button.cv:hover {
            background-color: #45a049;
        }
        
        /* Ajouter un peu d'espace entre l'icône et le texte (réutilisation) */
        .button i {
            margin-right: 8px;
        }

        /* --- Style du Contenu Principal (Bouton Central) --- */
        .main-content {
            flex-grow: 1; /* Permet au contenu principal de prendre tout l'espace restant */
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
            padding: 15px 80px;
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
        <div class="nav-buttons">
            <a href="projets.html" class="button menu-projects">
                Mes Projets
            </a>
            
            <a href="about.html" class="button menu-about">
                <i class="fas fa-user"></i> À Propos de moi
            </a>
        </div>
    </div>

    <div class="main-content">
        <h1 class="welcome-title">Bienvenue sur mon Portfolio de Social Data Analyst</h1>
        
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
