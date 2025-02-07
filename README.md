<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Mon Portfolio</title>

  <!-- CSS -->
  <style>
    /* Styles généraux */
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f9f9f9;
      display: flex;
    }

    /* Conteneur global */
    .container {
      display: flex;
      width: 100%;
    }

    /* Colonne de gauche (Profil) */
    .profile-container {
      width: 30%;
      padding: 20px;
      background-color: white;
      border-right: 2px solid #ddd;
      transition: all 0.5s ease-in-out;
    }

    /* Partie Projets - prend toute la largeur après la disparition de la gauche */
    .projects-section {
      width: 70%;
      padding: 40px 5%;
      background-color: #ffffff;
      transition: width 0.5s ease-in-out;
    }

    /* Titres */
    h2 {
      color: #2596BE;
    }

    /* Masquer la colonne gauche */
    .hidden {
      display: none;
    }

    /* Quand la colonne gauche disparaît, projets prend toute la largeur */
    .expanded {
      width: 100%;
    }

  </style>
</head>
<body>

  <div class="container">
    <!-- Conteneur Profil -->
    <div class="profile-container" id="profile-container">
      <h1>À la recherche d'un stage de Social Data Analyst</h1>

      <!-- Boutons -->
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

    <!-- Section Projets -->
    <div class="projects-section" id="projects-section">
      <h2>📂 Projets</h2>

      <h3>1 - Étude des Représentations Médiatiques des Jeux Vidéo et leur Monétisation</h3>
      <p><strong>Méthode :</strong> Analyse thématique par NLP et analyse des cooccurrences.</p>
      <p><strong>Logiciels :</strong> Python, Google Colaboratory, Europresse.</p>
      <p><strong>Compétences :</strong> Traitement du langage naturel (NLP), visualisation de données, clustering.</p>
      <p><strong>Objectif :</strong> Étudier la manière dont les médias abordent la monétisation des jeux vidéo à l'échelle locale et internationale.</p>
      <p><strong>Livrable :</strong> Rapport analytique comprenant les distributions thématiques, comparaisons par région et visualisations des résultats.</p>

      <p><strong>Représentation hiérarchique avec écart-type :</strong></p>
      <img src="/mesdocuments/representationhierarchique_ecart-type.JPG" alt="Représentation hiérarchique" width="80%">
    </div>
  </div>

  <!-- JavaScript : Masquer la section Profil en scrollant -->
  <script>
    document.addEventListener("scroll", function() {
      var profileContainer = document.getElementById("profile-container");
      var projectsSection = document.getElementById("projects-section");
      var position = projectsSection.getBoundingClientRect().top;

      if (position < window.innerHeight * 0.3) {
        profileContainer.classList.add("hidden"); // Cache la colonne gauche
        projectsSection.classList.add("expanded"); // Étend la section "Projets"
      } else {
        profileContainer.classList.remove("hidden");
        projectsSection.classList.remove("expanded");
      }
    });
  </script>

  <!-- Ajouter Font Awesome pour les icônes -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"></script>

</body>
</html>
