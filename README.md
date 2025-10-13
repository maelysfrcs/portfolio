<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Maëlys François - Portfolio</title>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"></script>
    
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; /* Police moderne */
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            color: #333;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        /* CORRECTION: Ajout d'une marge au header et alignement du contenu */
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            /* Augmentation du padding pour plus d'espace en haut */
            padding: 25px 50px; 
            background-color: #fff;
            box-shadow: 0 1px 3px rgba(0,0,0,0.1); /* Ombre plus légère */
        }
        
        /* CORRECTION: Titre du site (votre nom) */
        .site-title {
            font-size: 1.8em; 
            font-weight: 700; /* Plus marqué */
            color: #0077b5; /* Couleur principale (bleu) */
            text-decoration: none;
            /* Suppression de margin-left: 10px; car le padding du header gère la marge */
        }

        /* Conteneur des liens du menu */
        .nav-links {
            display: flex;
            gap: 30px; /* Plus d'espace entre les liens */
        }

        /* NOUVEAU STYLE: Liens de navigation modernes */
        .nav-link {
            font-size: 17px;
            font-weight: 600;
            text-decoration: none;
            color: #555; /* Gris foncé pour le texte de base */
            position: relative;
            padding-bottom: 5px; /* Espace pour la barre de survol */
            transition: color 0.3s ease;
        }

        .nav-link:hover {
            color: #0077b5; /* Bleu au survol */
        }
        
        /* Effet de soulignement moderne (barre en dessous) */
        .nav-link::after {
            content: '';
            position: absolute;
            width: 0;
            height: 3px; /* Épaisseur de la barre */
            background: #0077b5;
            bottom: 0;
            left: 0;
            transition: width 0.3s ease;
        }
        
        .nav-link:hover::after {
            width: 100%; /* La barre apparaît au survol */
        }
        
        /* --- Styles des Boutons de Contact (Footer) --- */
        
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

        /* Styles Pied de Page (inchangés) */
        .button.linkedin {
            background-color: #0077b5;
            color: white;
        }

        .button.linkedin:hover {
            background-color: #005f84;
        }

        .button.email {
            background-color: #e44d26; 
            color: white;
        }

        .button.email:hover {
            background-color: #b43d19; 
        }

        .button.cv {
            background-color: #4CAF50;
            color: white;
        }

        .button.cv:hover {
            background-color: #45a049;
        }
        
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
            margin-top: 20px; /* Ajout d'une marge sous le titre */
        }

        .main-button:hover {
            background-color: #005f84;
        }

        .welcome-title {
            font-size: 38px; /* Légèrement plus grand */
            margin-bottom: 0; /* Espacement géré par la marge du bouton */
            font-weight: 300;
        }

        /* --- Style du Pied de Page (Footer) --- */
        .footer {
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


        <div class="nav-links">
            <a href="projets.html" class="nav-link">
                Mes Projets
            </a>
            
            <a href="about.html" class="nav-link">
                À Propos de moi
            </a>
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
