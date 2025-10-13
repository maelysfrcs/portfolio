<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"></script>

<style>
    /* -------------------------------------------------------------------------- */
    /* STYLES DE BASE (Pour garantir le positionnement du footer) */
    /* -------------------------------------------------------------------------- */
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f4f4;
        color: #333;
        display: flex;
        flex-direction: column;
        min-height: 100vh; /* S'assure que le footer est bien en bas de l'écran */
    }

    /* -------------------------------------------------------------------------- */
    /* FOOTER ISOLÉ ET ALIGNÉ HORIZONTALEMENT 💡 */
    /* -------------------------------------------------------------------------- */
    .footer-fixed {
        /* Donne l'effet de "cache blanc" et aligne le contenu */
        background-color: white; 
        box-shadow: 0 -2px 8px rgba(0,0,0,0.1);
        padding: 20px 0;
        margin-top: auto; /* Pousse ce bloc en bas de la page */
        width: 100%;
        text-align: center;
    }
    
    .contact-buttons-container {
        display: inline-block; /* Permet de centrer les boutons en tant que bloc */
        text-align: center; 
        padding: 0 10px;
    }

    .contact-button {
        display: inline-flex; /* Aligne les boutons horizontalement */
        align-items: center;
        justify-content: center;
        text-decoration: none;
        font-weight: 600;
        padding: 10px 18px; 
        min-width: 130px; 
        color: #333; /* Couleur de base du texte */
        transition: color 0.3s ease, transform 0.2s ease;
        position: relative;
    }
    
    .contact-button i {
        margin-right: 8px;
        color: #777;
        transition: color 0.3s ease;
    }

    /* Séparateur vertical: Bordure sur les boutons sauf le premier */
    .contact-button:not(:first-child) {
        border-left: 1px solid #ddd;
    }
    
    .contact-button:hover {
        color: #0077b5; 
        transform: translateY(-1px); 
    }
    .contact-button:hover i {
        color: #0077b5; 
    }

    /* --- Styles des boutons pour la couleur d'arrière-plan (optionnel) --- */
    /* Si vous voulez un style de "bouton" coloré, vous pouvez utiliser ces classes */
    .btn-linkedin { color: white !important; background-color: #0077b5; border-radius: 4px; border: none; }
    .btn-cv { color: white !important; background-color: #28a745; border-radius: 4px; border: none; }
    .btn-email { color: white !important; background-color: #dc3545; border-radius: 4px; border: none; }
    
    /* Retirer le séparateur quand les boutons sont colorés */
    .btn-linkedin:not(:first-child),
    .btn-cv:not(:first-child),
    .btn-email:not(:first-child) {
        border-left: none;
    }
    /* Marge entre les boutons colorés */
    .btn-linkedin, .btn-cv, .btn-email {
        margin: 0 5px; 
    }

    /* -------------------------------------------------------------------------- */
    /* MASQUAGE DES TEXTES JEKYLL/GITHUB RÉSIDUELS */
    /* -------------------------------------------------------------------------- */
    .view-on-github-link, .downloads, .site-footer, .project-tagline, .site-footer p {
        display: none !important;
    }


    /* --- Styles existants (minimaux) pour ne rien retirer d'important --- */
    /* Note : J'ai conservé uniquement les classes que vous avez utilisées */

    .nav-links {
        display: flex;
        justify-content: flex-end;
        margin-top: 20px; 
        margin-right: 50px;
    }

    .main-content {
        flex-grow: 1;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        text-align: center;
        padding: 20px;
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

<div class="footer-fixed">
    <div class="contact-buttons-container">
        <a href="https://www.linkedin.com/in/ma%C3%ABlys-fran%C3%A7ois" class="contact-button btn-linkedin" target="_blank">
            <i class="fab fa-linkedin"></i> LinkedIn
        </a>
        
        <a href="mesdocuments/cv_maëlys_françois.pdf" class="contact-button btn-cv" target="_blank" rel="noopener noreferrer">
            <i class="fas fa-file-pdf"></i> Mon CV
        </a>
        
        <a href="mailto:maelys.francois31@gmail.com" class="contact-button btn-email" target="_blank">
            <i class="fas fa-envelope"></i> Mon Email
        </a>
    </div>
</div>
