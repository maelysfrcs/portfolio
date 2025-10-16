<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@700&display=swap" rel="stylesheet">

<style>
    /* Styles de base */
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
    /* MASQUAGE ET CORRECTIONS JEKYLL */
    /* -------------------------------------------------------------------------- */
    .page-header h1,
    .view-on-github-link,
    .downloads,
    .site-footer,
    .project-tagline {
        display: none !important;
    }
    body > .wrapper, .page-header {
        padding-top: 0 !important;
        padding-left: 50px !important; 
        margin-top: 0 !important; 
        margin-bottom: 0 !important; 
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
        padding: 10px 20px;
        border: 1px solid #ccc;
        border-bottom: none;
        transition: all 0.2s ease; 
    }
    
    /* Style par défaut pour les liens INACTIFS : 'À Propos de moi' */
    .nav-link {
        color: #0077b5; /* Texte bleu */
        background-color: #f0f0f0; /* Fond gris */
    }

    .nav-link:hover {
        color: #005f96; /* Bleu foncé au survol */
        background-color: #e0e0e0; /* Gris plus foncé */
        transform: translateY(-2px); 
        box-shadow: 0 -2px 5px rgba(0,0,0,0.05); 
    }
    
    /* Style spécifique pour le lien ACTIF : 'Mes Projets' */
    .nav-link.active {
        color: #333; /* Texte noir */
        background-color: #fff; /* Fond blanc */
        border-color: #ccc;
        border-bottom-color: #fff; /* Cache la bordure sur le fond blanc */
        transform: none; 
        box-shadow: none;
    }
    /* Survol pour le lien actif */
    .nav-link.active:hover {
        color: #333;
        background-color: #fff;
        transform: translateY(-2px);
        box-shadow: 0 -2px 5px rgba(0,0,0,0.05); 
    }

    .nav-links a:last-child {
        border-top-right-radius: 6px;
    }
    .nav-links a:first-child {
        border-top-left-radius: 6px;
    }

    /* -------------------------------------------------------------------------- */
    /* STYLES: Header Personnel (Photo et Description) */
    /* -------------------------------------------------------------------------- */
    .personal-header {
        display: flex;
        align-items: center;
        padding: 40px 50px;
        background-color: #fff;
        border-bottom: 1px solid #ccc;
        margin-top: -1px; 
    }

    .profile-photo {
        width: 150px;
        height: 150px;
        border-radius: 50%;
        margin-right: 30px;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        flex-shrink: 0;
        display: block !important;
        max-width: none !important; 
        object-fit: contain; 
    }

    .info-container h1 {
        margin: 0;
        font-size: 32px; 
        color: #0077b5; 
    }

    .info-container p {
        margin-top: 5px;
        font-size: 16px;
        color: #555;
        max-width: 800px;
    }

    /* -------------------------------------------------------------------------- */
    /* STYLES: Contenu Principal (Mes Projets) */
    /* -------------------------------------------------------------------------- */
    .main-content-projects {
        flex-grow: 1;
        padding: 50px; 
    }
    
    .main-content-projects h2 {
        font-family: 'Poppins', sans-serif;
        font-size: 38px; 
        font-weight: 700;
        color: #333; 
        margin-top: 0;
        margin-bottom: 30px; 
        text-align: center;
    }

    /* -------------------------------------------------------------------------- */
    /* STYLES: Pied de Page */
    /* -------------------------------------------------------------------------- */
    .footer {
        padding: 25px 0; 
        background-color: #fff;
        box-shadow: 0 -2px 4px rgba(0,0,0,0.1);
        text-align: center;
        width: 100%; 
        margin-top: auto; 
    }
    
    .footer-buttons {
        display: block; 
        padding: 0 10px; 
        white-space: nowrap; 
    }

    .button {
        display: inline-flex; 
        align-items: center;
        justify-content: flex-start;
        padding: 10px 15px; 
        min-width: 100px; 
        font-size: 16px; 
        font-weight: 500; 
        text-decoration: none;
        /* RETIRE : background-color: transparent; */
        color: #333; 
        border: none;
        border-radius: 4px; 
        transition: background-color 0.3s ease, color 0.3s ease; 
        cursor: pointer;
        position: relative; 
        margin: 0 5px; 
    }
    
    /* Supprime la bordure interne */
    .button:not(:first-child) {
        border-left: none; 
        padding-left: 15px; 
        margin-left: 5px; 
    }

    /* Définition des couleurs de fond légères */
    .linkedin-btn {
        background-color: #E0F7FA; /* Bleu très clair */
    }
    .cv-btn {
        background-color: #E8F5E9; /* Vert très clair (pour Mon CV) */
    }
    .email-btn {
        background-color: #FFF3E0; /* Orange très clair (pour Mon Email) */
    }

    .button:hover {
        color: #0077b5; 
        transform: none; 
    }
    /* Rendre le fond un peu plus foncé au survol */
    .linkedin-btn:hover { background-color: #B3E5FC; }
    .cv-btn:hover { background-color: #C8E6C9; }
    .email-btn:hover { background-color: #FFECB3; }


    .button i {
        display: inline-block;
        margin-right: 10px; 
        color: #555; 
        transition: color 0.3s ease;
    }
    .button:hover i {
        color: #0077b5; 
    }
    
    /* --- Media Query pour l'adaptabilité mobile (max-width: 768px) --- */
    @media (max-width: 768px) {
        .personal-header {
            flex-direction: column;
            text-align: center;
            padding: 20px;
        }
        .profile-photo {
            margin-right: 0;
            margin-bottom: 20px;
        }
        .footer-buttons {
            display: flex; 
            flex-direction: column; 
            gap: 10px;
            width: 100%; 
            padding: 0; 
            /* Alignement central des éléments enfants */
            align-items: center; 
            white-space: normal; 
        }
        .button {
            /* Largeur du bouton */
            width: 90%; 
            margin: 0; 
            
            /* Centrage du contenu (texte + icône) à l'intérieur du bouton */
            justify-content: center; 
            
            border: 1px solid #ddd; 
            border-radius: 4px;
            min-width: unset; 
            padding: 10px;
        }
        .button:not(:first-child) {
            border-left: none;
            padding-left: 10px;
            margin-left: 0;
        }
    }
</style>

<div class="nav-links">
    <a href="projets.html" class="nav-link active">
        Mes Projets
    </a>
    
    <a href="about.html" class="nav-link">
        À Propos de moi
    </a>
</div>

<div class="personal-header">
    <img src="photocv.PNG" class="profile-photo" alt="Maëlys François">
    <div class="info-container">
        <h1>Maëlys François</h1>
        <p>Passionnée par l'<strong>analyse de données</strong> avec une expertise pour l'étude des <strong>comportements sur les réseaux sociaux numériques</strong>. Mon objectif est de transformer les données complexes en stratégies actionnables.</p>
    </div>
</div>

<div class="main-content-projects">
    <h2>Mes Projets</h2>
    <p>Cette section est l'endroit idéal pour commencer à lister vos projets. Vous pouvez enlever ce texte d'exemple.</p>
</div>

<footer class="footer">
    <div class="footer-buttons">
        <a href="https://www.linkedin.com/in/ma%C3%ABlys-fran%C3%A7ois" class="button linkedin-btn" target="_blank">
            <i class="fab fa-linkedin"></i> LinkedIn
        </a>
        
        <a href="cv_maëlys_françois.pdf" class="button cv-btn" target="_blank" rel="noopener noreferrer">
            <i class="fas fa-file-pdf"></i> Mon CV
        </a>
        
        <a href="mailto:maelys.francois31@gmail.com" class="button email-btn" target="_blank">
            <i class="fas fa-envelope"></i> Mon Email
        </a>
    </div>
</footer>
