<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Mon Portfolio</title>

  <!-- CSS intégré -->
  <style>
    /* Conteneur global */
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f9f9f9;
    }

    /* Section Profil */
    .profile-section {
      max-width: 800px;
      margin: auto;
      padding: 20px;
      background-color: white;
      border-radius: 8px;
      box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    }

    /* Section Projets : pleine largeur */
    .projects-section {
      width: 100%;
      padding: 40px 10%;
      background-color: #ffffff;
    }

    /* Titres des sections */
    h2 {
      color: #2596BE;
    }

    /* Style des boutons */
    .button {
      display: inline-block;
      margin-right: 10px;
      padding: 12px 25px;
      font-size: 16px;
      font-weight: bold;
      text-align: center;
      text-decoration: none;
      border-radius: 5px;
      transition: all 0.3s ease;
    }

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
  </style>
</head>
<body>

  <!-- Section Profil -->
  <div class="profile-section">
    <h1>À la recherche d'un stage de Social Data Analyst</h1>
    
    <!-- Boutons côte à côte -->
    <p>
      <a href="https://www.linkedin.com/in/ma%C3%ABlys-fran%C3%A7ois" class="button linkedin">
        <i class="fab fa-linkedin"></i> Mon LinkedIn
      </a>
      <a href="mailto:maelys.francois31@gmail.com" class="button email">
        <i class="fas fa-envelope"></i> Mon Email
      </a>
      <a href="mesdocuments/cv.pdf" class="button cv" target="_blank" rel="noopener noreferrer">
        <i class="fas fa-file-pdf"></i> Mon CV
      </a>
    </p>

    <h2>🎓 Formations</h2>
    <p><strong>Master Sociologie | Parcours Réseaux et Sociétés (RESO) (2023 - 2025)</strong></p>
    <ul>
      <li>Analyse de situations sociales complexes via l'analyse de réseaux d'acteurs</li>
      <li>Maîtrise d'outils statistiques et numériques pour l'analyse de données</li>
      <li>Spécialisation en réseaux sociaux et Web</li>
    </ul>

    <p><strong>Licence Sociologie (2020 - 2023)</strong></p>
    <ul>
      <li>Regard analytique et critique sur le monde social contemporain</li>
    </ul>

    <h2>💼 Expériences</h2>
    <p><strong>Enquête-école - Enquêtrice @ Toulouse Tech Transfer (Octobre 2024 à ce jour)</strong></p>

    <p><strong>Stage - Chargée d'étude en sociologie @ CNRS-IPBS (Avril 2024 - Septembre 2024)</strong></p>
    <ul>
      <li>Conduite d'une enquête sur l'état des discriminations et de la qualité de vie au travail.</li>
      <li>Opérationnalisation et conduite d'un questionnaire</li>
      <li>Analyse de données</li>
      <li>Passation d'entretiens</li>
      <li>Production d'un rapport de synthèse anonymisé</li>
      <li>Proposition de pistes d'amélioration et de supports de communication</li>
    </ul>
  </div>

  <!-- Section Projets : pleine largeur -->
  <div class="projects-section">
    <h2>📂 Projets</h2>

    <h3>1 - Étude des Représentations Médiatiques des Jeux Vidéo et leur Monétisation</h3>
    <p><strong>Méthode :</strong> Analyse thématique par NLP et analyse des cooccurrences.</p>
    <p><strong>Logiciels :</strong> Python, Google Colaboratory, Europresse.</p>
    <p><strong>Compétences :</strong> Traitement du langage naturel (NLP), visualisation de données, clustering.</p>
    <p><strong>Objectif :</strong> Étudier la manière dont les médias abordent la monétisation des jeux vidéo à l'échelle locale et internationale.</p>
    <p><strong>Livrable :</strong> Rapport analytique comprenant les distributions thématiques, comparaisons par région et visualisations des résultats.</p>

    <p><strong>Représentation hiérarchique avec écart-type :</strong></p>
    <img src="/mesdocuments/representationhierarchique_ecart-type.JPG" alt="Représentation hiérarchique" width="80%">

    <h3>2 - Extraction de thématiques sur la Santé Mentale et l’Isolement (France & Japon)</h3>
    <p><strong>Méthode :</strong> Analyse statistique (ANOVA, χ², tests de fiabilité).</p>
    <p><strong>Logiciels :</strong> Jamovi.</p>
    <p><strong>Livrable :</strong> Rapport statistique illustré de tableaux, graphiques et tests statistiques.</p>
    <img src="/mesdocuments/statistiquesdescriptives.png" alt="Statistiques descriptives" width="80%">

    <h3>3 - Analyse des Réseaux de la Noblesse Européenne avant et après la Révolution Française</h3>
    <p><strong>Méthode :</strong> Analyse des réseaux sociaux (centralité, densité, distances géodésiques).</p>
    <p><strong>Logiciels :</strong> R (igraph).</p>
    <p><strong>Livrable :</strong> Rapport détaillant les résultats, visualisations et interprétation des réseaux familiaux.</p>
    <img src="/mesdocuments/visualisation.jpg" alt="Visualisation réseau complet" width="80%">
  </div>

  <!-- Ajouter Font Awesome pour les icônes -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"></script>
</body>
</html>
