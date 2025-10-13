<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Maëlys François - Portfolio</title>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"></script>
    
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            color: #333;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        /* NOUVEAU CONTENEUR pour le contenu généré par l'utilisateur */
        /* Ceci devrait créer la marge en haut nécessaire (surtout si le titre Jekyll est collé) */
        #page-content {
            padding-top: 50px; /* Augmentation de l'espace au-dessus du menu d'onglet */
            flex-grow: 1; /* Permet au contenu de s'étendre et de pousser le footer vers le bas */
        }
        
        /* --- Style du Menu de Navigation (Onglets) --- */
        .nav-links {
            display: flex;
            justify-content: flex-end; 
            gap: 0; 
            margin-right: 50px; 
        }

        .nav-link {
            font-size: 17px;
            font-weight: 600;
            text-decoration: none;
            color: #333;
            padding: 10px 20px;
            background-color: #fff;
            border: 1px solid #ccc;
            border-bottom: none;
            transition: all 0.2s ease;
        }

        .nav-link:hover {
            color: #0077b5;
            background-color: #f0f0f0;
        }
        
        .nav-links a:last-child {
            border-top-right-radius: 6px;
        }
        
        .nav-links a:first-child {
            border-top-left-radius: 6px;
        }
        
        .nav-link.active {
            color: #0077b5;
            background-color: #f4f4f4; 
            border-color: #f4f4f4;
            /* Souligne l'onglet actif avec une ligne fine */
            border-top: 2px solid #0077b5; 
        }

        /* --- Style du Contenu Principal (Bouton Central) --- */
        .main-content {
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
            margin-top: 20px;
        }

        .main-button:hover {
            background-color: #005f84;
        }

        .welcome-title {
            font-size: 38px;
            margin-bottom: 0;
            font-weight: 300;
        }

        /* --- Style du Pied de Page (Footer) --- */
        .footer {
            /* Le padding horizontal est retiré */
            padding: 20px 0; 
            background-color: #fff;
            box-shadow: 0 -2px 4px rgba(0,0,0,0.1);
            text-align: center;
            width: 100%; /* S'assure qu'il prend toute la largeur */
        }
        
        .footer-buttons {
            display: flex;
            /* Étire les boutons sur toute la largeur disponible */
            width: 100%; 
            /* Supprime le gap car les boutons sont censés se toucher */
            gap: 0; 
        }
        
        .footer-buttons .button {
            flex-grow: 1; /* Chaque bouton prend une part égale de l'espace */
            padding: 15px 10px; /* Augmente la hauteur pour le confort sur mobile */
            border-radius: 0; /* Supprime les coins arrondis pour l'effet barre */
            font-size: 16px;
        }
        
        /* COULEURS DES BOUTONS (Nouvelle Palette) */
        /* Utilisation de couleurs inspirées des onglets pour l'harmonie */
        
        .button.linkedin {
            background-color: #0077b5; /* Bleu Principal */
        }

        .button.linkedin:hover {
            background-color: #005f84;
        }

        .button.cv {
            background-color: #333; /* Gris foncé/Noir */
        }

        .button.cv:hover {
            background-color: #111;
        }
        
        .button.email {
            background-color: #708090; /* Gris Ardoise (Slate Gray) */
        }

        .button.email:hover {
            background-color: #5b6978;
        }

        /* Retrait des bords arrondis aux extrémités de la barre de boutons */
        .footer-buttons a:first-child { border-bottom-left-radius: 0; }
        .footer-buttons a:last-child { border-bottom-right-radius: 0; }
    </style>
</head>
<body>

    <div id="page-content">
        <div class="nav-links">
            <a href="projets.html" class="nav-link">
                Mes Projets
            </a>
            
            <a href="about.html" class="nav-link active">
                À Propos de moi
            </a>
        </div>

        <div class="main-content">
            <h1 class="welcome-title">Bienvenue sur mon Portfolio d'Analyste de données sociales</h1>
            
            <a href="projets.html" class="main-button">
                Voir Mes Projets
            </a>
        </div>
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
