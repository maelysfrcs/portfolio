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

        /* --- Style du Menu de Navigation (Header) --- */
        /* Nous n'utilisons plus l'élément .header dans le HTML, mais le style des liens est ici */
        
        /* Conteneur des liens du menu */
        .nav-links {
            display: flex;
            /* Remplacement de space-between par flex-end pour les aligner à droite */
            justify-content: flex-end; 
            gap: 0; /* Suppression de l'espace entre les liens pour qu'ils soient collés comme des onglets */
            
            /* Ajout d'une marge pour les éloigner du bord droit */
            margin-right: 50px; 
        }

        /* NOUVEAU STYLE: Liens de navigation avec aspect d'onglet/cadre */
        .nav-link {
            font-size: 17px;
            font-weight: 600;
            text-decoration: none;
            color: #333; /* Texte noir */
            padding: 10px 20px; /* Rembourrage pour donner la taille des onglets */
            
            /* Aspect onglet/cadre */
            background-color: #fff;
            border: 1px solid #ccc;
            border-bottom: none; /* Pas de ligne en bas pour simuler l'attachement au contenu */
            
            transition: all 0.2s ease;
        }

        .nav-link:hover {
            color: #0077b5; /* Bleu au survol */
            background-color: #f0f0f0; /* Léger changement de couleur au survol */
        }
        
        /* Les deux coins du dernier onglet (à droite) sont arrondis */
        .nav-links a:last-child {
            border-top-right-radius: 6px;
        }
        
        /* Les deux coins du premier onglet (à gauche) sont arrondis */
        .nav-links a:first-child {
            border-top-left-radius: 6px;
        }
        
        /* Pour un effet "actif", où l'onglet est visuellement sélectionné */
        /* Vous pouvez ajouter la classe 'active' à l'onglet de la page en cours */
        .nav-link.active {
            color: #0077b5;
            background-color: #f4f4f4; /* Couleur de fond du body pour simuler la continuité */
            border-color: #f4f4f4; /* Cache le bord du bas */
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

    <br><br>

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
