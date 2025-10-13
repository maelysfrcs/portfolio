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
    /* CORRECTION MARGE ALTERNATIVE (Cible le contenu injecté par Jekyll) */
    /* -------------------------------------------------------------------------- */
    body > .wrapper, .page-header {
        padding-top: 30px !important; 
        padding-left: 50px !important; 
        margin-top: 0 !important; 
        margin-bottom: 0 !important; 
    }

    .page-header h1 {
        margin-top: 0 !important;
        padding-top: 0 !important;
    }
    
    .page-header p {
        padding-left: 50px !important;
        margin-left: -50px !important;
    }
    
    /* -------------------------------------------------------------------------- */
    /* Styles du Menu de Navigation (Onglets) - INCHANGÉS */
    /* -------------------------------------------------------------------------- */
    .nav-links {
        display: flex;
        justify-content: flex-end;
        gap: 0;
        margin-top: 20px; 
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
        transform: translateY(-2px); 
        box-shadow: 0 -2px 5px rgba(0,0,0,0.05); 
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
        border-bottom-color: #f4f4f4; 
        transform: none; 
    }

    /* -------------------------------------------------------------------------- */
    /* NOUVEAUX STYLES: Pied de Page (Compact et Minimaliste) 💡 */
    /* -------------------------------------------------------------------------- */
    .footer {
        padding: 15px 0; /* Petit padding */
        background-color: #fff;
        box-shadow: 0 -2px 4px rgba(0,0,0,0.1);
        text-align: center;
        width: 20%; 
        margin-top: auto; 
    }
    
    .footer-buttons {
        display: block; 
        padding: 0 10px; /* Moins d'espace pour plus de compacité */
        white-space: nowrap; 
    }

    .button {
        /* Alignement forcé côte à côte */
        display: inline-flex; 
        align-items: center;
        justify-content: center;
        
        /* Compactage des boutons */
        padding: 5px 10px; 
        min-width: 90px; /* Petite largeur minimum */
        font-size: 14px; /* Petite taille de police */
        font-weight: 500; /* Poids normal */
        
        text-decoration: none;
        background-color: transparent; 
        color: #333; /* Couleur de texte sombre standard */
        border: none;
        transition: color 0.3s ease; /* Transition simplifiée */
        cursor: pointer;
        position: relative; 
    }
    
    /* Séparateur vertical Minimaliste */
    .button:not(:first-child) {
        border-left: 1px solid #ccc; /* Séparateur plus clair */
        padding-left: 15px; /* Petit espace après la ligne */
        margin-left: 15px; /* Petit espace avant la ligne */
    }
    
    /* Suppression des marges pour utiliser la séparation par bordure */
    .button {
        margin: 0; 
    }


    .button:hover {
        color: #0077b5; /* Bleu au survol pour un look moderne */
        transform: none; /* Pas de mouvement */
    }

    .button i {
        margin-right: 5px; /* Icônes plus proches */
        color: #555; 
        transition: color 0.3s ease;
    }
    .button:hover i {
        color: #0077b5; 
    }
    
    /* --- Media Query pour l'adaptabilité mobile --- */
    @media (max-width: 500px) {
        .footer-buttons {
            display: flex; 
            flex-direction: column; 
            gap: 10px;
            padding: 0; 
        }
        .button {
            width: 80%; 
            margin: 0 auto; 
            border: 1px solid #ddd; 
            border-radius: 4px;
            min-width: unset; 
            padding: 10px;
            border-left: none; 
            padding-left: 10px;
            font-size: 16px; /* Taille normale sur mobile pour la lisibilité */
        }
    }

    /* -------------------------------------------------------------------------- */
    /* Style du Contenu Principal (INCHANGÉ) */
    /* -------------------------------------------------------------------------- */
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
        transform: scale(1.03); 
    }

    .welcome-title {
        font-size: 38px;
        margin-bottom: 0;
        font-weight: 300;
    }

    /* -------------------------------------------------------------------------- */
    /* Styles pour masquer TOUS les éléments GitHub (Répétés et Renforcés) */
    /* -------------------------------------------------------------------------- */
    /* Utilisation du sélecteur universel pour être sûr de masquer tous les enfants du footer par défaut */
    .site-footer * {
        display: none !important;
    }
    
    /* Masquage des autres conteneurs par défaut de Jekyll */
    .view-on-github-link,
    .downloads,
    .site-footer,
    .project-tagline {
        display: none !important;
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
        <a href="https://www.linkedin.com/in/ma%C3%ABlys-fran%C3%A7ois" class="button" target="_blank">
            <i class="fab fa-linkedin"></i> LinkedIn
        </a>
        
        <a href="mesdocuments/cv_maëlys_françois.pdf" class="button" target="_blank" rel="noopener noreferrer">
            <i class="fas fa-file-pdf"></i> Mon CV
        </a>
        
        <a href="mailto:maelys.francois31@gmail.com" class="button" target="_blank">
            <i class="fas fa-envelope"></i> Mon Email
        </a>
    </div>
</footer>
