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
    /* NOUVEAUX STYLES: FICHE PROJET */
    /* -------------------------------------------------------------------------- */
    .project-card {
        background-color: #fff;
        border: 1px solid #ddd;
        border-radius: 8px;
        padding: 30px;
        margin-bottom: 40px;
        box-shadow: 0 4px 10px rgba(0,0,0,0.05);
    }

    .project-card h3 {
        font-family: 'Poppins', sans-serif;
        color: #0077b5; /* Bleu LinkedIn */
        font-size: 26px;
        margin-top: 0;
        border-bottom: 2px solid #0077b5;
        padding-bottom: 10px;
        margin-bottom: 20px;
    }

    .project-section-title {
        font-size: 18px;
        font-weight: 700;
        color: #333;
        margin-top: 15px;
        margin-bottom: 5px;
        border-left: 4px solid #f0ad4e; /* Orange/jaune accent */
        padding-left: 10px;
    }

    .project-summary {
        display: flex;
        gap: 30px;
        margin-bottom: 20px;
    }

    .project-summary > div {
        flex: 1;
    }

    .project-summary p {
        font-size: 15px;
        line-height: 1.6;
        color: #555;
    }
    
    /* Mise en évidence des listes de compétences et outils */
    .skills-tech-container {
        display: flex;
        flex-wrap: wrap;
        gap: 20px;
        margin-top: 20px;
    }

    .skills-tech-block {
        flex: 1;
        min-width: 250px;
    }
    
    .skills-list, .tech-list {
        list-style: none;
        padding: 0;
        margin: 0;
    }

    .skills-list li, .tech-list li {
        background-color: #f4f4f4;
        margin-bottom: 8px;
        padding: 8px 12px;
        border-radius: 4px;
        font-size: 14px;
        border-left: 3px solid #0077b5; /* Bleu accent pour les compétences */
        color: #333;
    }

    .tech-list li {
        border-left: 3px solid #6c757d; /* Gris pour les outils */
    }

    .graph-suggestion-container {
        margin-top: 30px;
        padding-top: 20px;
        border-top: 1px dashed #ccc;
    }
    .graph-suggestion-container p {
        background-color: #e6f7ff; /* Fond bleu très clair */
        padding: 15px;
        border-radius: 4px;
        border: 1px solid #b3e5fc;
        font-size: 14px;
        color: #004085;
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
        
        /* Adaptation mobile des fiches projet */
        .project-summary {
            flex-direction: column;
            gap: 10px;
        }
        .skills-tech-container {
            flex-direction: column;
            gap: 10px;
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
    
    <div class="project-card">
        <h3>Analyse de l'influence des modèles économiques sur les joueurs et les communautés en ligne</h3>
        
        <div class="project-summary">
            <div>
                <p class="project-section-title">Objectif et problématique</p>
                <p><strong>Problématique :</strong> Dans quelle mesure l'évolution des modèles de monétisation des jeux vidéo, des bornes d'arcade aux dépenses in-game, influence-t-elle les <strong>pratiques des joueurs</strong> ? </p>
                <p><strong>Objectif :</strong> Analyser comment les <strong> structures économiques </strong> (microtransactions, loot boxes, etc.) transforment l'expérience et l'identité des joueurs.</p>
            </div>
            <div>
                <p class="project-section-title">Résultats clés et conclusions</p>
                <ul>
                    <li>L'évolution de la monétisation a rendu la relation entre le joueur et la valeur du contenu plus <strong>ambiguë et complexe</strong>, soulevant des questions d'équité et d'accessibilité.</li>
                    <li>Les débats communautaires en ligne sont <strong>fortement polarisés</strong> (F2P vs P2W). Le sujet du Pay-to-Win génère un sentiment plus critique, mais aussi un engagement communautaire significativement plus élevé.</li>
                    <li>Les facteurs socio-économiques modulent les pratiques, mais <strong>le genre et l'âge</strong> sont des déterminants plus significatifs de la fréquence de jeu que le revenu ou le niveau d'études. L'enjeu d'accessibilité est passé de financier à sociodémographique. </li>
                </ul>
            </div>
        
        <div class="skills-tech-container">
            
            <div class="skills-tech-block">
                <p class="project-section-title">Compétences développées</p>
                <ul class="skills-list">
                    <li><strong>Analyses statistiques avancées :<\strong> Tests d’hypothèses (t, χ2, V de Cramer, Tau de Kendall B), ACL/ACM. </li>
                    <li><strong>Analyse textuelle IA :<\strong> Topic Modeling, Sentiment Analysis (VADER de NLTK), Classification. </li>
                    <li><strong>Collecte & gestion de données :<\strong> Web Scraping (Reddit), Gestion de base de données (Enquête Ludespace 2012, Corpus Europresse).</li>
                    <li><strong>Visualisation de données :<\strong> Réalisation de graphiques avec Jamovi, Python, R,.</li>
                </ul>
            </div>
            
            <div class="skills-tech-block">
                <p class="project-section-title">Méthodes et logiciels</p>
                <ul class="tech-list">
                    <li><strong>Analyse quantitative :<\strong> R, Python, Jamovi. </li>
                    <li><strong>Analyse textuelle :<\strong> R, Google Collaboratory. </li>
                    <li><strong>Préparation des données :<\strong> Excel, Jamovi. </li>
                    <li><strong>Méthode de recherche :<\strong> Étude de cas (Genshin Impact), Analyse de corpus médiatique (Europresse), Enquête par questionnaire (Ludespace). </li>
                </ul>
            </div>

            <div class="skills-tech-block">
                <p class="project-section-title">Apport Personnel</p>
                <p>Ce travail a affiné ma capacité à croiser des données issues de sources hétérogènes (enquêtes socio-démographiques, discours communautaires, articles de presse) pour répondre à une problématique complexe. J'ai acquis une maîtrise approfondie des techniques de traitement de données qualitatives et quantitatives pour dégager des tendances sociologiques.</p>
            </div>
        </div>
        
        <div class="graph-suggestion-container">
            <p class="project-section-title">💡 Suggestion de Graphiques à Intégrer :</p>
            <p>Pour rendre cette fiche plus visuelle, je vous recommande d'ajouter les graphiques suivants :
            <ol>
                [cite_start]<li>Un graphique illustrant la **Répartition des sentiments par topic** (Figure 32 du mémoire) : Cela met en évidence visuellement la forte corrélation entre les sujets liés à la monétisation et les sentiments négatifs/critiques de la communauté. [cite: 122]</li>
                [cite_start]<li>Un graphique de **Comparaison des upvotes entre posts F2P et P2W** (Figure 35) : Il démontrerait clairement l'engagement accru suscité par le sujet Pay-to-Win, même s'il est controversé. [cite: 137]</li>
                [cite_start]<li>Un tableau ou graphique synthétisant les **Variables Déterminantes de la Fréquence de Jeu** (âge et genre versus revenu) pour illustrer votre conclusion principale. [cite: 149]</li>
            </ol>
            </p>
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
