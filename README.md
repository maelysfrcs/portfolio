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

    /* -------------------------------------------------------------------------- */
    /* CORRECTION MARGE (Jekyll) - TENTE DE POUSSER LE CONTENU AUTO-GÉNÉRÉ VERS LE BAS */
    /* -------------------------------------------------------------------------- */
    /* Cibler le nom si c'est la première chose dans le body (comme un <h1> ou <p>) */
    /* Nous allons forcer l'ajout d'une marge supérieure */
    body > h1:first-child, body > h2:first-child, body > p:first-child {
        margin-top: 30px !important; /* Ajout d'une marge supérieure pour séparer du bord */
        padding-left: 50px; /* Aligner avec les liens de navigation */
    }

    /* SÉPARATION : Espacement entre le contenu Jekyll et les onglets de navigation */
    .nav-links {
        display: flex;
        justify-content: flex-end;
        gap: 0;
        /* MODIFICATION: Augmentation de la marge supérieure pour séparer le nom du menu */
        margin-top: 20px; 
        margin-right: 50px;
    }

    /* -------------------------------------------------------------------------- */
    /* NOUVEAU STYLE: Liens de navigation avec aspect d'onglet/cadre & Animation */
    /* -------------------------------------------------------------------------- */
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

    /* MODIFICATION: Animation de décalage vers le haut */
    .nav-link:hover {
        color: #0077b5;
        background-color: #f0f0f0;
        transform: translateY(-2px); 
        box-shadow: 0 -2px 5px rgba(0,0,0,0.05); /* Petite ombre pour l'effet de "survol" */
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
        border-color: #ccc;
        border-bottom-color: #f4f4f4; /* Simule la jonction avec le fond */
        transform: none; /* Pas d'animation sur l'onglet actif */
    }

    /* -------------------------------------------------------------------------- */
    /* REFACTORING: Styles Pied de Page (Liens Textuels Modernes) */
    /* -------------------------------------------------------------------------- */
    .footer {
        /* MODIFICATION: Augmentation du padding pour plus d'espace */
        padding: 35px 30px; 
        background-color: #fff;
        box-shadow: 0 -2px 4px rgba(0,0,0,0.1);
        text-align: center;
    }
    
    .footer-buttons {
        display: flex;
        justify-content: center;
        /* MODIFICATION: Augmentation de l'espace entre les liens */
        gap: 40px; 
        /* Rendre l'alignement vertical sur mobile plus gérable */
        flex-wrap: wrap; 
    }

    .button {
        display: flex; /* Utilisation de flex pour centrer icône et texte */
        align-items: center;
        justify-content: center;
        padding: 10px 15px; /* Réduction du padding car ce n'est plus un bouton massif */
        min-width: 120px; /* Garantir une largeur minimale pour l'harmonie */
        font-size: 15px;
        font-weight: 600;
        text-decoration: none;
        border-radius: 0; /* Suppression des coins arrondis pour l'effet épuré/cadre */
        transition: color 0.3s ease;
        cursor: pointer;
        
        /* NOUVEAU STYLE: Liens discrets, couleur sur survol */
        background-color: transparent; 
        color: #555; /* Couleur de texte gris par défaut */
        border: none;
    }
    
    /* Animation et couleur au survol pour le pied de page */
    .button:hover {
        color: #0077b5; /* Bleu au survol pour tous */
        transform: translateY(-2px); /* Légère animation d'élévation */
        background-color: transparent; 
    }

    /* Styles d'icône (couleur au repos / couleur au survol) */
    .button i {
        margin-right: 8px;
        color: #777; /* Icône grise au repos */
        transition: color 0.3s ease;
    }
    .button:hover i {
        color: #0077b5; /* Icône bleue au survol */
    }

    /* --- Styles Spécifiques (Conservés pour l'icône principale du pied de page si nécessaire) --- */
    .button.linkedin { /* Conserve la classe pour des usages futurs si besoin, mais le style est neutralisé */ }
    .button.email {}
    .button.cv {}
    
    /* Media Query pour l'adaptabilité mobile */
    @media (max-width: 600px) {
        .footer-buttons {
            flex-direction: column;
            gap: 15px;
        }
        .button {
            width: 80%; /* Occupe plus d'espace sur mobile */
            margin: 0 auto; /* Centrage */
            border: 1px solid #ddd; /* Ajout d'un léger cadre sur mobile */
            border-radius: 4px;
        }
    }

    /* --- Style du Contenu Principal (Inchangé) --- */
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
        transition: background-color 0.3s ease, transform 0.2s ease;
        margin-top: 20px;
    }

    .main-button:hover {
        background-color: #005f84;
        transform: scale(1.03); /* Animation au survol */
    }

    .welcome-title {
        font-size: 38px;
        margin-bottom: 0;
        font-weight: 300;
    }
</style>

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
