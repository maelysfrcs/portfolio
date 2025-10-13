<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"></script>

<style>
    /* AJOUT DE .container ET MODIFICATION DES BOUTONS DU FOOTER */
    
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

    /* AJOUT: Style pour le conteneur principal du thème Jekyll pour corriger la marge haute */
    .container {
        padding-top: 40px !important; 
    }

    /* Conteneur des liens du menu */
    .nav-links {
        display: flex;
        justify-content: flex-end; 
        gap: 0; 
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
        /* MODIFICATION: Augmentation du padding et des bords arrondis */
        padding: 12px 25px;
        font-size: 16px;
        font-weight: bold;
        text-align: center;
        text-decoration: none;
        border-radius: 50px; 
        transition: all 0.3s ease;
        cursor: pointer;
        /* AJOUT: Ombre pour le relief */
        box-shadow: 0 4px 6px rgba(0,0,0,0.1); 
    }

    /* MODIFICATION: Couleurs des boutons du Footer */
    .button.linkedin {
        background-color: #0077b5;
        color: white;
    }

    .button.linkedin:hover {
        background-color: #005f84;
    }

    .button.email {
        background-color: #6c757d; /* Bleu/Gris Élégant */
        color: white;
    }

    .button.email:hover {
        background-color: #5a6268;
    }

    .button.cv {
        background-color: #28a745; /* Vert Vif */
        color: white;
    }

    .button.cv:hover {
        background-color: #1e7e34;
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
        gap: 20px; /* Plus d'espace entre les boutons */
    }
</style>

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
