<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"></script>

<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        margin: 0;
        /* MODIFICATION: Ajout d'une petite marge en haut pour pousser le contenu */
        padding: 10px 0 0 0; 
        background-color: #f4f4f4;
        color: #333;
        display: flex;
        flex-direction: column;
        min-height: 100vh;
    }

    /* -------------------------------------------------------------------------- */
    /* CORRECTION MARGE SIMPLIFIÉE (Jekyll) */
    /* -------------------------------------------------------------------------- */
    /* Cibler le nom si c'est la première chose dans le body (comme un <h1> ou <p>) */
    body > h1:first-child, body > h2:first-child, body > p:first-child {
        /* MODIFICATION: Assure que le nom commence bien à 50px du bord gauche */
        padding-left: 50px !important; 
        /* !important est nécessaire ici pour forcer l'écrasement des styles Jekyll */
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
    /* Styles Pied de Page (Liens Horizontaux avec Séparateur) */
    /* -------------------------------------------------------------------------- */
    .footer {
        padding: 35px 30px; 
        background-color: #fff;
        box-shadow: 0 -2px 4px rgba(0,0,0,0.1);
        text-align: center;
    }
    
    .footer-buttons {
        display: flex;
        justify-content: center;
        /* MODIFICATION: Assure l'alignement horizontal par défaut sur tous les grands écrans */
        flex-direction: row; 
        gap: 0; 
        flex-wrap: wrap; 
        align-items: center;
    }

    .button {
        display: flex; 
        align-items: center;
        justify-content: center;
        padding: 10px 25px; 
        min-width: 150px; 
        font-size: 16px; 
        font-weight: 600;
        text-decoration: none;
        background-color: transparent; 
        color: #555; 
        border: none;
        transition: color 0.3s ease, transform 0.2s ease;
        cursor: pointer;
        position: relative; 
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
    /* MODIFICATION: Réduction de la taille d'activation de la colonne */
    @media (max-width: 500px) {
        .footer-buttons {
            /* Passe en colonne uniquement sur les très petits écrans */
            flex-direction: column; 
            gap: 10px;
        }
        .button {
            width: 80%; 
            margin: 0 auto; 
            border: 1px solid #ddd; 
            border-radius: 4px;
            min-width: unset; 
        }
        /* Suppression du séparateur sur mobile */
        .button:not(:last-child)::after {
            content: none;
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
        transform: scale(1.03); 
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
