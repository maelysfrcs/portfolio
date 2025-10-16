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

    /* NOUVEAUX STYLES: Blocs Projet */
    .project-detail {
        background-color: #fff;
        padding: 30px;
        margin-bottom: 30px;
        border: 1px solid #ddd;
        border-radius: 8px;
        box-shadow: 0 2px 5px rgba(0,0,0,0.05);
    }
    .project-detail h3 {
        font-family: 'Poppins', sans-serif;
        font-size: 28px;
        color: #0077b5; /* Bleu LinkedIn */
        margin-top: 0;
        margin-bottom: 15px;
        border-bottom: 3px solid #f0f0f0;
        padding-bottom: 10px;
    }
    .project-detail h4 {
        color: #333;
        font-size: 18px;
        margin-top: 20px;
        margin-bottom: 8px;
        font-weight: 600;
    }
    .project-detail p {
        line-height: 1.6;
        margin-bottom: 15px;
    }
    .skills-list {
        display: flex;
        flex-wrap: wrap;
        gap: 10px;
        margin-top: 10px;
    }
    .skill-tag {
        background-color: #e0f7fa; /* Fond très clair */
        color: #0077b5; /* Texte bleu */
        padding: 6px 12px;
        border-radius: 4px;
        font-size: 14px;
        font-weight: 600;
        white-space: nowrap;
    }
    /* Style pour les sections Méthodes/Compétences */
    .method-box {
        background-color: #f9f9f9;
        padding: 15px;
        border-radius: 6px;
        border-left: 5px solid #0077b5;
        margin-top: 15px;
    }
    .method-box ul {
        list-style-type: none;
        padding-left: 0;
        margin: 0;
    }
    .method-box ul li {
        margin-bottom: 5px;
        padding-left: 20px;
        position: relative;
    }
    .method-box ul li:before {
        content: "\f058"; /* check-square icon */
        font-family: "Font Awesome 5 Free";
        font-weight: 900;
        color: #4CAF50; /* Vert pour valider */
        position: absolute;
        left: 0;
        top: 0;
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
        /* RETOUR AU FOND BLANC PAR DÉFAUT */
        background-color: #fff; 
        color: #333; 
        border: none;
        border-radius: 0; /* Suppression du border-radius pour correspondre au style initial */
        transition: color 0.3s ease; 
        cursor: pointer;
        position: relative; 
        margin: 0; 
    }
    
    /* Rétablissement de la barre de séparation verticale entre les boutons sur PC */
    .button:not(:first-child) {
        border-left: 1px solid #ccc; 
        padding-left: 15px; 
        margin-left: 15px; 
    }

    .button:hover {
        color: #0077b5; 
        transform: none; 
    }

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
            
            /* Rétablissement du border et border-radius pour la version mobile */
            border: 1px solid #ddd; 
            border-radius: 4px;
            min-width: unset; 
            padding: 10px;
        }
        /* Suppression de la bordure verticale en mode colonne (mobile) */
        .button:not(:first-child) {
            border-left: none;
            padding-left: 10px;
            margin-left: 0;
        }
        .main-content-projects {
            padding: 30px 20px;
        }
        .project-detail {
            padding: 20px;
        }
        .project-detail h3 {
            font-size: 24px;
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

    <div class="project-detail">
        <h3>Analyse de l'impact des modèles Free-to-Play et 'Gacha' sur l'expérience et les communautés de joueurs</h3>
        
        <h4>Problématique & Objectif</h4>
        <p>Ce mémoire a cherché à répondre à la question : <strong>Dans quelle mesure l'évolution des modèles de monétisation des jeux vidéo influence-t-elle les pratiques des joueurs ?</strong>. [cite_start]L'objectif principal était de cerner les conséquences socio-économiques et expérientielles des modèles actuels (Free-to-Play, microtransactions) sur l'expérience et les dynamiques communautaires des joueurs[cite: 25].</p>
        
        <h4>Résultats Clés & Conclusions</h4>
        [cite_start]<p>L'analyse a révélé une <strong>tension significative</strong> : si les joueurs apprécient les mécaniques de base et la progression (suscitant des sentiments positifs), les aspects économiques et compétitifs du jeu génèrent une forte majorité de sentiments négatifs et des critiques importantes[cite: 25]. [cite_start]Les systèmes de dépenses *in-game* créent ainsi une frustration notable au sein de la communauté[cite: 25]. [cite_start]De plus, les pratiques de jeu sont principalement liées à des <strong>facteurs générationnels et culturels</strong> (genre, âge) plutôt qu'à des variables socio-économiques classiques comme le revenu ou le niveau d'études[cite: 26].</p>
        
        <h4>Finalité du Projet</h4>
        [cite_start]<p>Ce travail a permis de combler une lacune dans la littérature existante (*game studies*) en apportant une analyse quantitative et qualitative des aspects économiques du jeu vidéo[cite: 26], essentielles pour comprendre l'industrie actuelle et ses implications sociales.</p>
        
        <h4>Apport Personnel & Compétences Clés</h4>
        <p>Ce projet a été l'occasion de gérer l'intégralité du cycle d'un projet data complexe, de la collecte de données hétérogènes à la modélisation statistique avancée et à l'interprétation des discours sociaux.</p>

        <div class="method-box">
            <h4>Méthodologie et Outils Techniques</h4>
            <div class="skills-list">
                <span class="skill-tag">Analyses Statistiques Avancées</span>
                <span class="skill-tag">Analyse Textuelle IA</span>
                <span class="skill-tag">Web Scraping</span>
                <span class="skill-tag">Gestion de Base de Données</span>
                <span class="skill-tag">Visualisation de Données</span>
            </div>
            <ul>
                [cite_start]<li>**Données :** Exploitation de l'enquête par questionnaire <strong>Ludespace</strong> (Université de Tours) [cite: 25, 26][cite_start], et corpus de données non structurées collectées par Web Scraping sur <strong>Reddit</strong> (étude de cas du jeu F2P "Genshin Impact")[cite: 25].</li>
                [cite_start]<li>**Analyses Statistiques :** Tests d’hypothèses (t, χ², V de Cramer, Tau de Kendall B), Tri à plat, ACL, ACM, Régression Logistique, ANOVA[cite: 26].</li>
                [cite_start]<li>**Analyse Textuelle IA :** <strong>Topic Modeling</strong> pour identifier les sujets majeurs de discussion (monétisation, bannières, quêtes, gameplay) [cite: 25, 27][cite_start], <strong>Sentiment Analysis</strong> pour évaluer les perceptions des joueurs (négatives vs positives) [cite: 25][cite_start], et **Clustering** des discours[cite: 27].</li>
            </ul>
        </div>
    </div>
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
