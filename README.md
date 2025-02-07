<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Mon Portfolio</title>
   
  <!-- CSS intégré -->
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
    }

    /* Style général des sections */
    .container {
      max-width: 1000px;
      margin: auto;
      padding: 20px;
    }

    /* Boutons de contact */
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
      color: white;
    }

    .linkedin { background-color: #0077b5; }
    .linkedin:hover { background-color: #005f84; }
    .email { background-color: #e44d26; }
    .email:hover { background-color: #b43d19; }
    .cv { background-color: #4CAF50; }
    .cv:hover { background-color: #45a049; }

    /* Section des projets en pleine largeur */
    .projects {
      width: 100%;
      background-color: #f8f9fa;
      padding: 40px 0;
    }

    .projects .container {
      max-width: 1200px;
    }

    /* Style des cartes projets */
    .project-card {
      background: white;
      padding: 20px;
      margin: 20px 0;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .project-card h3 {
      color: #2596BE;
    }

    .project-card img {
      width: 100%;
      max-width: 600px;
      display: block;
      margin: 10px auto;
      border-radius: 5px;
    }

    .project-card p {
      text-align: justify;
    }

  </style>
</head>

<body>
  <!-- Section Présentation -->
  <div class="container">
    <h1>À la recherche d'un stage de Social Data Analyst</h1>

    <p>
      <a href="https://www.linkedin.com/in/ma%C3%ABlys-fran%C3%A7ois" class="button linkedin">
        Mon LinkedIn
      </a>
      <a href="mailto:maelys.francois31@gmail.com" class="button email">
        Mon Email
      </a>
      <a href="mesdocuments/cv.pdf" class="button cv" target="_blank" rel="noopener noreferrer">
        Mon CV
      </a>
    </p>

    <h2>💼 Expériences</h2>

    <h3>Enquête-école - Enquêtrice @ Toulouse Tech Transfer (Octobre 2024 - Présent)</h3>

    <h3>Stage - Chargée d'étude en sociologie @ CNRS-IPBS (Avril 2024 - Septembre 2024)</h3>
    <ul>
      <li>Enquête sur les discriminations et la qualité de vie au travail</li>
      <li>Opérationnalisation et passation d'un questionnaire</li>
      <li>Analyse de données qualitatives et quantitatives</li>
      <li>Entretiens semi-directifs et rapport de synthèse</li>
    </ul>
  </div>

  <!-- Section Projets en pleine largeur -->
  <div class="projects">
    <div class="container">
      <h2>📂 Projets</h2>

      <div class="project-card">
        <h3>1 - Étude des Représentations Médiatiques des Jeux Vidéo et leur Monétisation</h3>
        <p>
          <strong>Méthode :</strong> Analyse thématique par NLP et analyse des cooccurrences.<br>
          <strong>Logiciels :</strong> Python, Google Colaboratory, Europresse.<br>
          <strong>Compétences :</strong> Traitement du langage naturel (NLP), visualisation de données, clustering.<br>
          <strong>Objectif :</strong> Étudier la manière dont les médias abordent la monétisation des jeux vidéo.<br>
        </p>
        <p><strong>Représentation hiérarchique avec écart-type :</strong></p>
        <img src="/mesdocuments/representationhierarchique_ecart-type.JPG" alt="Graphique de l'étude sur la monétisation">
      </div>

      <div class="project-card">
        <h3>2 - Extraction de thématiques sur la Santé Mentale et l’Isolement (France & Japon)</h3>
        <p>
          <strong>Méthode :</strong> Statistiques descriptives et inférentielles (ANOVA, χ², tests de fiabilité).<br>
          <strong>Logiciels :</strong> Jamovi.<br>
          <strong>Objectif :</strong> Comparer les discours sur l’isolement social et la santé mentale entre la France et le Japon.<br>
        </p>
        <img src="/mesdocuments/statistiquesdescriptives.png" alt="Statistiques descriptives">
      </div>

      <div class="project-card">
        <h3>3 - Analyse des Réseaux de la Noblesse Européenne avant et après la Révolution Française</h3>
        <p>
          <strong>Méthode :</strong> Analyse des réseaux sociaux (centralité, densité, distances géodésiques).<br>
          <strong>Logiciels :</strong> R (igraph).<br>
          <strong>Objectif :</strong> Étudier les dynamiques de mariages et alliances stratégiques à travers les siècles.<br>
        </p>
        <img src="/mesdocuments/visualisation.jpg" alt="Visualisation de réseaux de la noblesse">
      </div>

    </div>
  </div>

  <!-- Script pour FontAwesome -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"></script>
</body>
</html>
