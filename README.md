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
    /* Ces sélecteurs tentent de cibler l'élément qui contient votre nom et description */
    /* pour lui donner une marge correcte. */
    body > .wrapper, .page-header {
        padding-top: 30px !important; /* Ajoute de l'espace au-dessus du bloc de contenu */
        padding-left: 50px !important; /* Alignement avec les liens de navigation */
        margin-top: 0 !important; /* Annule toute marge supérieure par défaut */
        margin-bottom: 0 !important; /* Annule toute marge inférieure par défaut */
    }

    /* Le titre de la page spécifiquement (Maëlys François) */
    .page-header h1 {
        margin-top: 0 !important;
        padding-top: 0 !important;
    }
    
    /* La description sous votre nom (si elle est générée par Jekyll) */
    .page-header p {
        padding-left: 50px !important;
        margin-left: -50px !important; /* Pour compenser le padding si besoin, à tester */
    }
    
    /* -------------------------------------------------------------------------- */
    /* Styles du Menu de Navigation (Onglets) */
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
    /* REVISION MAJEURE: Styles Pied de Page (Liens Horizontaux sans découpe) 💡 */
    /* -------------------------------------------------------------------------- */
    .footer {
        /* MODIFICATION: Réduction du padding car le footer-buttons gère mieux l'espace */
        padding: 20px 0; 
        background-color: #fff;
        box-shadow: 0 -2px 4px rgba(0,0,0,0.1);
        text-align: center;
        width: 100%; /* S'assure que le footer prend toute la largeur */
        margin-top: auto; /* Pousse le footer vers le bas */
    }
    
    .footer-buttons {
        display: flex;
        justify-content: center;
        flex-direction: row; 
        gap: 0; 
        flex-wrap: nowrap; 
        align-items: center;
        /* MODIFICATION: Ajout de padding horizontal au conteneur pour empêcher la découpe */
        padding: 0 20px; 
    }

    .button {
        display: flex; 
        align-items: center;
        justify-content: center;
        /* MODIFICATION: Réduction du padding horizontal pour économiser de l'espace */
        padding: 10px 15px; 
        /* MODIFICATION: Réduction de la largeur minimale pour qu'ils rentrent */
        min-width: 120px; 
        font-size: 16px; 
        font-weight: 600;
        text-decoration: none;
        background-color: transparent; 
        color: #555; 
        border: none;
        transition: color 0.3s ease, transform 0.2s ease;
        cursor: pointer;
        position: relative; 
        flex-shrink: 0; 
    }
    
    /* Séparateur vertical entre les liens */
    .button:not(:last-child)::after {
        content: '';
        position: absolute;
        right: 0;
        top: 25%;
        height: 50%;
        width: 1px;
        background-color: #ddd; 
    }

    .button:hover {
        color: #0077b5; 
        transform: translateY(-1px); 
        background-color: transparent; 
    }

    .button i {
        margin-right: 8px;
        color: #777; 
        transition: color 0.3s ease;
    }
    .button:hover i {
        color: #0077b5; 
    }
    
    /* --- Media Query pour l'adaptabilité mobile (Uniquement les petits téléphones) --- */
    @media (max-width: 500px) {
        .footer-buttons {
            flex-direction: column; 
            gap: 10px;
            padding: 0; /* Suppression du padding latéral sur mobile pour optimiser l'espace */
        }
        .button {
            width: 80%; 
            margin: 0 auto; 
            border: 1px solid #ddd; 
            border-radius: 4px;
            min-width: unset; 
            flex-shrink: 1; 
            padding: 10px; /* Padding ajusté pour mobile */
        }
        .button:not(:last-child)::after {
            content: none;
        }
    }

    /* -------------------------------------------------------------------------- */
    /* Style du Contenu Principal (Inchangé, mais s'assure d'un espacement suffisant) */
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
    /* Styles pour masquer les éléments GitHub générés par le thème Jekyll Minimal */
    /* -------------------------------------------------------------------------- */
    .view-on-github-link, /* Le lien "View the project on GitHub" */
    .downloads, /* Le conteneur des boutons de téléchargement */
    .site-footer /* Le pied de page par défaut du thème Jekyll Minimal */
    {
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
