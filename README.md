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
            /* CORRECTION MARGE NOM/TITRE: Pousser tout le contenu vers le bas */
            padding-top: 50px; 
        }

        /* --- Style du Menu de Navigation (Onglets) --- */
        .nav-links {
            display: flex;
            justify-content: flex-end;
            gap: 0;
            /* Réglage de la marge pour l'alignement visuel */
            margin-right: 50px; 
        }

        /* NOUVEAU STYLE: Liens de navigation avec aspect d'onglet/cadre */
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
        }

        /* --- Styles des Boutons de Contact (Footer) --- */
        
        .button {
            display: inline-block;
            /* Augmentation du padding horizontal pour que les boutons soient plus larges */
            padding: 12px 24px; 
            font-size: 16px; /* Texte légèrement plus grand */
            font-weight: bold;
            text-align: center;
            text-decoration: none;
            border-radius: 8px; /* Coins plus arrondis pour un look moderne */
            transition: all 0.3s ease;
            cursor: pointer;
        }
        
        /* Harmonisation des couleurs du pied de page */
        /* LinkedIn: Conservé */
        .button.linkedin {
            background-color: #0077b5; 
            color: white;
        }

        .button.linkedin:hover {
            background-color: #005f84; 
        }

        /* CV: Nouveau bleu-gris pour l'harmonie */
        .button.cv {
            background-color: #6c757d; 
            color: white;
        }

        .button.cv:hover {
            background-color: #5a6268; 
        }

        /* Email: Nouveau bleu clair pour l'harmonie */
        .button.email {
            background-color: #17a2b8; 
            color: white;
        }

        .button.email:hover {
            background-color: #138496; 
        }
        
        .button i {
            margin-right: 8px;
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
            gap: 20px; /* Plus d'espace entre les boutons */
        }

        /* MEDIA QUERY pour l'adaptation Mobile */
        @media (max-width: 600px) {
            /* Le pied de page devient une colonne sur petit écran */
            .footer-buttons {
                flex-direction: column;
                gap: 10px;
            }
            /* Les boutons prennent toute la largeur sur mobile */
            .footer-buttons .button {
                width: 100%; 
                padding: 15px 10px;
            }
            /* Les onglets du menu de navigation passent aussi en colonne ou s'alignent mieux */
            .nav-links {
                justify-content: center;
                margin-right: 0;
                width: 100%;
            }
            .nav-link {
                flex-grow: 1; /* Les onglets prennent la même largeur */
                text-align: center;
                padding: 10px 5px;
            }
            /* Le titre principal est plus petit sur mobile */
            .welcome-title {
                font-size: 28px;
            }
        }
    </style>
</head>
<body>

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
