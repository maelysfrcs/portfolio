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

    /* NOUVELLE MODIFICATION: Marge pour le Titre (Nom/Prénom) */
    /* Ce sélecteur cible l'en-tête principal généré par Jekyll pour ajouter une marge. */
    /* Il suppose que votre titre Maëlys François est le premier <h1> ou un équivalent direct. */
    /* Si cela ne fonctionne pas, il faudra inspecter l'élément injecté. */
    .page-header { 
        padding-top: 30px; /* Augmente l'espace au-dessus du titre */
        padding-left: 50px; /* Aligne avec le reste du contenu */
        margin-bottom: -10px; /* Réduit l'espace avec le contenu suivant */
    }

    /* --- Style du Menu de Navigation (Header) --- */
    .nav-links {
        display: flex;
        justify-content: flex-end;
        gap: 0;
        margin-right: 50px;
        /* AJOUT: S'assure que le menu n'est pas masqué par le reste */
        z-index: 10; 
    }

    /* NOUVEAU STYLE: Animation de Survol pour les onglets */
    .nav-link {
        font-size: 17px;
        font-weight: 600;
        text-decoration: none;
        color: #333;
        padding: 10px 20px;
        background-color: #fff;
        border: 1px solid #ccc;
        border-bottom: none;
        
        /* MODIFICATION: Ajout d'une transition pour le survol (animation) */
        transition: all 0.2s ease-in-out; 
    }

    .nav-link:hover {
        color: #0077b5;
        background-color: #f0f0f0; 
        /* AJOUT: Légère élévation au survol */
        transform: translateY(-2px); 
        /* AJOUT: Ombre discrète au survol */
        box-shadow: 0 4px 6px rgba(0, 119, 181, 0.1); 
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
        border-color: #ccc; /* Laisse le bord visible mais change la couleur */
        /* MODIFICATION: L'onglet actif ne bouge pas au survol */
        transform: none; 
        box-shadow: none;
    }
    
    .nav-link.active:hover {
        background-color: #f4f4f4; /* Maintient la couleur de fond */
        color: #0077b5;
    }

    /* --- Styles NOUVEAUX pour le Footer (Cadres/Cartes de contact) --- */

    /* MODIFICATION: Augmentation du padding du footer pour le rendre plus grand */
    .footer {
        padding: 30px 50px; /* Augmentation du padding vertical pour plus d'espace */
        background-color: #fff;
        box-shadow: 0 -2px 4px rgba(0,0,0,0.1);
        text-align: center;
    }
    
    .footer-buttons {
        display: flex;
        justify-content: center;
        /* MODIFICATION: Utilisation de 'wrap' pour le responsive */
        flex-wrap: wrap; 
        gap: 25px; /* Augmentation de l'espace entre les cartes */
    }

    /* NOUVEAU STYLE: Le style de "cadre/carte" pour les liens du footer */
    .contact-card {
        display: flex;
        flex-direction: column;
        align-items: center;
        text-decoration: none;
        
        /* Style de la carte */
        padding: 20px 30px;
        border-radius: 8px;
        border: 1px solid #ddd;
        min-width: 120px; /* Taille minimum pour l'harmonie */
        box-shadow: 0 2px 4px rgba(0,0,0,0.05);
        transition: all 0.3s ease;
        color: #333; /* Couleur de texte par défaut */
    }

    .contact-card:hover {
        /* Effet d'élévation au survol */
        transform: translateY(-3px); 
        box-shadow: 0 8px 12px rgba(0,0,0,0.1);
    }
    
    .contact-card .icon {
        font-size: 2.2em;
        margin-bottom: 10px;
    }

    .contact-card .label {
        font-weight: 600;
        font-size: 1em;
    }

    /* Couleurs spécifiques des cartes */
    .contact-card.linkedin .icon { color: #0077b5; }
    .contact-card.cv .icon { color: #4CAF50; }
    .contact-card.email .icon { color: #e44d26; }


    /* Suppression des anciens styles de boutons du footer pour éviter les conflits */
    .button, .button.linkedin, .button.cv, .button.email {
        all: unset; /* Réinitialise tout style pour ne pas interférer avec .contact-card */
        cursor: pointer;
        /* Ajout de la classe .contact-card dans le HTML à la place de .button */
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
    /* Styles main-button et welcome-title inchangés */
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

</style>
