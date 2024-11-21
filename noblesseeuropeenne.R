##### setup #####

rm(list=ls())

library(statnet)

# Working directory :
setwd("C:/Users/maely/OneDrive/Bureau/Master RESO/M1/S8/801/Segment B/codage noblesse-20240327/scripts")

# Chargement des données:
conjoints <- read.csv("./../../conjoints_compnet.csv",fileEncoding="UTF-8",row.names = 1)
enfants <- read.csv("./../../enfants_compnet.csv",fileEncoding="UTF-8",row.names=1)
parents <- read.csv("./../../parents_compnet.csv",fileEncoding="UTF-8",row.names=1)
att <- read.csv("./../../attributs_compnet.csv",fileEncoding="UTF-8")
conjoints <- as.matrix(conjoints)
enfants <- as.matrix(enfants)
parents <- as.matrix(parents)

##### 1 - correction des noms #####

# On enlève les accents, les tirets, les virgules et les majuscules partout, pour se simplifier la vie.
# On enlève aussi les espaces vides au début et à la fin des cellules.

fonction_correc_texte <- function(text_vector) {
  # Remove accents
  text_vector <- iconv(text_vector, to = "ASCII//TRANSLIT")
  
  # Convert to lowercase
  text_vector <- tolower(text_vector)
  
  # Remove hyphens
  text_vector <- gsub("-", " ", text_vector)
  text_vector <- gsub(",", " ", text_vector)
  
  # Remove leading and trailing spaces
  text_vector <- trimws(text_vector)
  
  return(text_vector)
}

# On applique la fonction précédente sur les variables:
att$mba <- fonction_correc_texte(att$mba)
att$sans_info <- fonction_correc_texte(att$sans_info)
att$nom <- fonction_correc_texte(att$nom)
att$naissance <- fonction_correc_texte(att$naissance)
att$sexe <- fonction_correc_texte(att$sexe)
att$lieu_naiss <- fonction_correc_texte(att$lieu_naiss)
att$lieu_deces <- fonction_correc_texte(att$lieu_deces)
att$date_deces <- fonction_correc_texte(att$date_deces)
att$cause_deces <- fonction_correc_texte(att$cause_deces)
att$famille <- fonction_correc_texte(att$famille)
att$religion <- fonction_correc_texte(att$religion)
att$titre1 <- fonction_correc_texte(att$titre1)
att$titre2 <- fonction_correc_texte(att$titre2)
att$titre3 <- fonction_correc_texte(att$titre3)
att$date_titre1 <- fonction_correc_texte(att$date_titre1)
att$date_titre2 <- fonction_correc_texte(att$date_titre2)
att$date_titre3 <- fonction_correc_texte(att$date_titre3)
att$lieu_titre1 <- fonction_correc_texte(att$lieu_titre1)
att$lieu_titre2 <- fonction_correc_texte(att$lieu_titre2)
att$lieu_titre3 <- fonction_correc_texte(att$lieu_titre3)
att$lieu_emigration <- fonction_correc_texte(att$lieu_emigration)
att$date_emigration <- fonction_correc_texte(att$date_emigration)
att$date_retour<- fonction_correc_texte(att$date_retour)


##### 2 - Frères et soeurs #####

# Création du réseau des freres et soeur (nb : on ne distingue pas demi-frere et demi-soeur).
# On crée une matrice vide.
siblings <- matrix(nrow = nrow(att),ncol = nrow(att),data=0)
rownames(siblings) <- att$id
colnames(siblings) <- att$id

# Boucle "for" qui parcourt chaque dyade, ie chaque paire d'individus:

for(i in 1:nrow(att)){
  for(j in 1:nrow(att)){
    
    if(i<j){ # comme c est symetrique on ne fait qu'une moitié de la matrice (quand i est strictement inferieur a j)
      
      id1 <- att$id[i]
      id2 <- att$id[j]
      
      # On prend leurs parents.
      par1 <- parents[id1,]
      par2 <- parents[id2,]
      par1 <- par1[par1==1]
      par2 <- par2[par2==1]
      par1 <- names(par1)
      par2 <- names(par2)
      
      # Si au moins un parent en commun, i et j sont freres et soeur.
      if(length(intersect(par1,par2))>0){
        siblings[i,j] <- 1
        siblings[j,i] <- 1 # symétrique
      }
      
    } # fin du premier if
  } # fin de la seconde boucle
} # fin de la premiere boucle

gplot(siblings)

# Création du reseau de tous les liens directs.
all <- conjoints+enfants+parents+siblings
all[all>1] <- 1
gplot(all)

##### 3 - Decoupage des reseaux par annee #####

# Finalement en 1820
year <- 1820

# 1ere étape : identifier les individus vivants en 1820.
alive_year <- att$naissance<year & att$date_deces>=year

# 2nde étape : utiliser ce vecteur logique pour indexer
# les data frames et les matrices.
att_year <- att[alive_year,]
parents_year <- parents[alive_year,alive_year]
enfants_year <- enfants[alive_year,alive_year]
conjoints_year <- conjoints[alive_year,alive_year]
all_year <- all[alive_year,alive_year]

# On regarde s'il y a bcp de changements d individus entre 1788 et 1820.
alive_1788 <- att$naissance<1788 & att$date_deces>=1788
alive_1820 <- att$naissance<1820 & att$date_deces>=1820
table(alive_1788,alive_1820) # 71 n'étaient pas vivants en 1788 mais le sont en 1820. Donc beaucoup de changements. 

##### 4 - Recodage des attributs #####

# Stockage de la variable avant recodage dans une autre variable
# (pour ne pas perdre l info si on veut revenir en arriere) (optionnel)
att$lieu_naiss_old <- att$lieu_naiss
att$famille_old <- att$famille

# Recodage.

# On affiche la table pour voir les différents lieux de naissance
table(att$lieu_naiss)

# On recode les lieux de naissance 
att$lieu_naiss[att$lieu_naiss%in%c("royaume de france","paris","versailles royaume de france")] <- "france"
att$lieu_naiss[att$lieu_naiss%in%c("royaume d'espagne","madrid")] <- "espagne"
att$lieu_naiss[att$lieu_naiss%in%c("empire autrichien","empire d'autriche","vienne autriche")] <- "autriche"
att$lieu_naiss[att$lieu_naiss%in%c("royaume de sardaigne","piemont sardaigne","royaume de piemont sardaigne")] <- "sardaigne"
att$lieu_naiss[att$lieu_naiss%in%c("londres")] <- "royaume uni"
att$lieu_naiss[att$lieu_naiss%in%c("saint empire","palatinat","mannheim","landgraviat de hesse darmstadt","allemagne","dresde","schwetzingen")] <- "saint empire romain germanique"
att$lieu_naiss[att$lieu_naiss%in%c("royaume de naples","naples")] <- "royaume de naples"
att$lieu_naiss[att$lieu_naiss%in%c("italie","modene")] <- "italie"
att$lieu_naiss[att$lieu_naiss%in%c("budapest")] <- "hongrie"
att$lieu_naiss[att$lieu_naiss%in%c("saxe","royaume de saxe")] <- "saxe"
att$lieu_naiss[att$lieu_naiss%in%c("maison bourbon parme","duche de parme et plaisance")] <- "duche de parme"
att$lieu_naiss[att$lieu_naiss%in%c("royaume de baviere")] <- "baviere"

att_year$lieu_naiss[att_year$lieu_naiss%in%c("royaume de france","paris","versailles royaume de france")] <- "france"
att_year$lieu_naiss[att_year$lieu_naiss%in%c("royaume d'espagne","madrid")] <- "espagne"
att_year$lieu_naiss[att_year$lieu_naiss%in%c("empire autrichien","empire d'autriche","vienne autriche")] <- "autriche"
att_year$lieu_naiss[att_year$lieu_naiss%in%c("royaume de sardaigne","piemont sardaigne","royaume de piemont sardaigne")] <- "sardaigne"
att_year$lieu_naiss[att_year$lieu_naiss%in%c("londres")] <- "royaume uni"
att_year$lieu_naiss[att_year$lieu_naiss%in%c("saint empire","palatinat","mannheim","landgraviat de hesse darmstadt","allemagne","dresde","schwetzingen")] <- "saint empire romain germanique"
att_year$lieu_naiss[att_year$lieu_naiss%in%c("royaume de naples","naples")] <- "royaume de naples"
att_year$lieu_naiss[att_year$lieu_naiss%in%c("italie","modene")] <- "italie"
att_year$lieu_naiss[att_year$lieu_naiss%in%c("budapest")] <- "hongrie"
att_year$lieu_naiss[att_year$lieu_naiss%in%c("saxe","royaume de saxe")] <- "saxe"
att_year$lieu_naiss[att_year$lieu_naiss%in%c("maison bourbon parme","duche de parme et plaisance")] <- "duche de parme"

# On vérifie
table(att$lieu_naiss)

# On fait la même chose pour les familles.
table(att_year$famille)
att_year$famille[att_year$famille%in%c("maison d'orleans","maison capetienne d'orleans","maison d orleans")] <- "orleans"
att_year$famille[att_year$famille%in%c("maison de bourbon parme","bourbon parme","bourbon anjou","maison de bourbon siciles","bourbon deux siciles","bourbon naples","maison bourbon anjou","maison de bourbon anjou","bourbon anjou","maison de bourbon","maison bourbon","maison de savoir: maison de bourbon","maison de bourbon d'espagne","maison de bourbon et maison de bourbon de parme")] <- "bourbon"
att_year$famille[att_year$famille%in%c("maison de wettin","maison wettin","branche albertine")] <- "wettin"
att_year$famille[att_year$famille%in%c("maison de wittlelsbach","maison wittelsbach", "maison de wittlelsbach","wittlelsbach","wittlelsbach","maison de wittelsbach")] <- "wittelsbach"
att_year$famille[att_year$famille%in%c("maison de habsbourg lorraine","maison de hasbourg lorraine","maison de habsbourg")] <- "habsbourg lorraine"
att_year$famille[att_year$famille%in%c("hasbourg este","autriche este","este","maison de hasbourg este", "maison de habsbourg este")] <- "habsbourg este"
att_year$famille[att_year$famille%in%c("maison este","maison d este","maison d'este")] <- "este"
att_year$famille[att_year$famille%in%c("maison de palatinat soulzbach")] <- "palatinat soulzbach"
att_year$famille[att_year$famille%in%c("landgraviat de hesse darmstadt","maison de hesse")] <- "hesse"
att_year$famille[att_year$famille%in%c("habsburg tuscany")] <- "habsbourg toscane"
att_year$famille[att_year$famille%in%c("arco zinneberg","von arco valley")] <- "arco"
att_year$famille[att_year$famille%in%c("famille berthier","maison de berthier")] <- "berthier"
att_year$famille[att_year$famille%in%c("savoie carignan","maison de savoie")] <- "savoie"
att_year$famille[att_year$famille%in%c("pignatelli")] <- "lucchesi palli"
att_year$famille[att_year$famille%in%c("cybo de malaspina")] <- "cybo malaspina"
att_year$famille[att_year$famille%in%c("maison de linange")] <- "linange"
att_year$famille[att_year$famille%in%c("maison de saxe")] <- "saxe"
att_year$famille[att_year$famille%in%c("maison de bade")] <- "bade"
att_year$famille[att_year$famille%in%c("maison de wurtemberg")] <- "wurtemberg"
att_year$famille[att_year$famille%in%c("maison de zahringen")] <- "zahringen"
att_year$famille[att_year$famille%in%c("famille britannique protestante","nassau weilburg","na","maison royale")] <- "NA"
att_year$famille[att_year$famille%in%c("holstein gottorp romanov")] <- "romanov"
att_year$famille[att_year$famille%in%c("maison d'arenberg")] <- "arenberg"
att_year$famille[att_year$famille%in%c("maison de meran")] <- "meran"
att_year$famille[att_year$famille%in%c("maison pallavicini")] <- "pallavicini"

att$famille[att$famille%in%c("maison d'orleans","maison capetienne d'orleans","maison d orleans")] <- "orleans"
att$famille[att$famille%in%c("maison de bourbon parme","bourbon parme","bourbon anjou","maison de bourbon siciles","bourbon deux siciles","bourbon naples","maison bourbon anjou","maison de bourbon anjou","maison de bourbon","maison bourbon","maison de savoir: maison de bourbon","maison de bourbon d'espagne","maison de bourbon et maison de bourbon de parme")] <- "bourbon"
att$famille[att$famille%in%c("maison de wettin","maison wettin","branche albertine")] <- "wettin"
att$famille[att$famille%in%c("maison de wittlelsbach","maison wittelsbach", "maison de wittlelsbach","wittlelsbach","wittlelsbach","maison de wittelsbach")] <- "wittelsbach"
att$famille[att$famille%in%c("maison de habsbourg lorraine","maison de hasbourg lorraine","maison de habsbourg")] <- "habsbourg lorraine"
att$famille[att$famille%in%c("hasbourg este","autriche este","este","maison de hasbourg este", "maison de habsbourg este")] <- "habsbourg este"
att$famille[att$famille%in%c("maison este","maison d este","maison d'este")] <- "este"
att$famille[att$famille%in%c("maison de palatinat soulzbach")] <- "palatinat soulzbach"
att$famille[att$famille%in%c("landgraviat de hesse darmstadt","maison de hesse")] <- "hesse"
att$famille[att$famille%in%c("habsburg tuscany")] <- "habsbourg toscane"
att$famille[att$famille%in%c("arco zinneberg","von arco valley")] <- "arco"
att$famille[att$famille%in%c("famille berthier","maison de berthier")] <- "berthier"
att$famille[att$famille%in%c("savoie carignan","maison de savoie")] <- "savoie"
att$famille[att$famille%in%c("pignatelli")] <- "lucchesi palli"
att$famille[att$famille%in%c("cybo de malaspina")] <- "cybo malaspina"
att$famille[att$famille%in%c("maison de linange")] <- "linange"
att$famille[att$famille%in%c("maison de saxe")] <- "saxe"
att$famille[att$famille%in%c("maison de bade")] <- "bade"
att$famille[att$famille%in%c("maison de wurtemberg")] <- "wurtemberg"
att$famille[att$famille%in%c("maison de zahringen")] <- "zahringen"
att$famille[att$famille%in%c("famille britannique protestante","nassau weilburg","na","maison royale")] <- "NA"
att$famille[att$famille%in%c("holstein gottorp romanov")] <- "romanov"
att$famille[att$famille%in%c("maison d'arenberg")] <- "arenberg"
att$famille[att$famille%in%c("maison de meran")] <- "meran"
att$famille[att$famille%in%c("maison pallavicini")] <- "pallavicini"

# Et on vérifie
att$famille

###

# On crée une variable binaire pour savoir si les individus sont nés avant ou après la révolution
att$naiss_avt_rev <- NA
att$naiss_avt_rev[att$naissance<1789] <- "oui"
att$naiss_avt_rev[att$naissance>=1789] <- "non"
table(att$naiss_avt_rev)

# 114 personnes sont nés après la révolution et 73 sont nés avant. Le questionnement est alors pertinent.

# NETWORK ET CALCULS DE BASE -----------------------------------------------

# On met conjoint en network
net_conjoints <- network(conjoints_year)
class(net_conjoints)

check <- get.vertex.attribute(net_conjoints,"vertex.names")==att_year$id # vecteur logique pour voir si chaque élément est égal à celui de l'autre vecteur
check
table(check)

#intégration des attributs au network
###net_conjoints%v%"lieu_naiss" <- att_year$lieu_naiss
net_conjoints%v%"famille" <- att_year$famille

# Et si on regarde le réseau :
net_conjoints
# Et je peux, comme précédemment, récupérer ça sous forme de vecteur
###net_conjoints%v%"lieu_naiss"
###class(net_conjoints%v%"lieu_naiss") # Il s'agit bien d'un vecteur, ici de type character
###table(net_conjoints%v%"lieu_naiss")
net_conjoints%v%"famille"
class(net_conjoints%v%"famille") #Il s'agit bien d'un vecteur, ici de type character

#CALCUL DE BASE
gden(net_conjoints) # densité 1820 0.004985045 #densité encore plus faible, des personnes peuvent être trop jeune, dans les ordres religieux
grecip(net_conjoints,measure="edgewise") # réciprocité 1788 1 #logique on se marie forcément à 2

# VISUALISATION -----------------------------------------------------------

# On crée un graphe par famille
table(net_conjoints%v%"famille")

color <- ifelse(att_year$famille == "wittelsbach", "red",
                ifelse(att_year$famille == "palatinat soulzbach", "orange",
                       ifelse(att_year$famille == "cybo malaspina", "yellow",
                              ifelse(att_year$famille == "savoie", "green",
                                     ifelse(att_year$famille == "este", "blue",
                                            ifelse(att_year$famille== "linange", "purple",
                                                   ifelse(att_year$famille== "arco", "pink",
                                                          ifelse(att_year$famille== "trauner von adlstetten", "darkblue",
                                                                 ifelse(att_year$famille== "bourbon", "cyan",
                                                                        ifelse(att_year$famille== "habsbourg lorraine", "darkgreen",
                                                                               ifelse(att_year$famille== "wettin", "darkorange4",
                                                                                      ifelse(att_year$famille== "habsbourg este", "darkseagreen",
                                                                                             ifelse(att_year$famille== "NA","black",
                                                                                                    ifelse(att_year$famille== "berthier", "deeppink",
                                                                                                           ifelse(att_year$famille== "hesse", "darkorchid4",
                                                                                                                  ifelse(att_year$famille== "bade", "steelblue",
                                                                                                                         ifelse(att_year$famille== "wurtemberg", "brown",
                                                                                                                                ifelse(att_year$famille== "zahringen", "darkorange3",
                                                                                                                                       ifelse(att_year$famille== "lucchesi palli", "azure",
                                                                                                                                              ifelse(att_year$famille== "romanov", "hotpink",
                                                                                                                                                     ifelse(att_year$famille== "arenberg", "slateblue",
                                                                                                                                                            ifelse(att_year$famille== "habsbourg toscane", "yellowgreen",
                                                                                                                                                                   ifelse(att_year$famille== "meran", "grey",
                                                                                                                                                                          "black")))))))))))))))))))))))


# Créer un gplot
gplot(net_conjoints, edge.col = "grey80",displayisolates = F,arrowhead.cex=0,
      vertex.col = color, vertex.sides = 50)

# On crée ensuite la légende

famille_unique <- unique(net_conjoints%v%"famille")

color2 <- ifelse(famille_unique == "wittelsbach", "red",
                 ifelse(famille_unique == "palatinat soulzbach", "orange",
                        ifelse(famille_unique == "cybo malaspina", "yellow",
                               ifelse(famille_unique == "savoie", "green",
                                      ifelse(famille_unique == "este", "blue",
                                             ifelse(famille_unique == "linange", "purple",
                                                    ifelse(famille_unique == "arco", "pink",
                                                           ifelse(famille_unique == "trauner von adlstetten", "darkblue",
                                                                  ifelse(famille_unique == "bourbon", "cyan",
                                                                         ifelse(famille_unique == "habsbourg lorraine", "darkgreen",
                                                                                ifelse(famille_unique == "wettin", "darkorange4",
                                                                                       ifelse(famille_unique == "habsbourg este", "darkseagreen",
                                                                                              ifelse(famille_unique == "NA","black",
                                                                                                     ifelse(famille_unique == "berthier", "deeppink",
                                                                                                            ifelse(famille_unique == "hesse", "darkorchid4",
                                                                                                                   ifelse(famille_unique == "bade", "steelblue",
                                                                                                                          ifelse(famille_unique == "wurtemberg", "brown",
                                                                                                                                 ifelse(famille_unique == "zahringen", "darkorange3",
                                                                                                                                        ifelse(famille_unique == "lucchesi palli", "azure",
                                                                                                                                               ifelse(famille_unique == "romanov", "hotpink",
                                                                                                                                                      ifelse(famille_unique== "arenberg", "slateblue",
                                                                                                                                                             ifelse(famille_unique== "habsbourg toscane", "yellowgreen",
                                                                                                                                                                    ifelse(famille_unique== "meran", "grey",
                                                                                                                                                                           ifelse(famille_unique== "pallavicini", "white",
                                                                                                                                                                                  "black"))))))))))))))))))))))))
# Ajouter une légende
legend("bottomright", legend = famille_unique,fill = color2 ,title = "Familles", cex = 0.8)

# HOMOPHILIE --------------------------------------------------------------

# On calcule l'homophilie des familles
odd_homophily <- function(network, attribute){
  shrink <- mixingmatrix(network, attribute)[,]
  nb_ingroup <- sum(diag(shrink))
  nb_total <- sum(shrink)
  nb_outgroup <- nb_total - nb_ingroup
  
  mytab <- table(get.vertex.attribute(network,attribute))
  potentiel_ingroup <- 0
  for(i in 1:length(mytab)){
    potentiel_ingroup <- potentiel_ingroup + mytab[i]*(mytab[i]-1)
  }
  
  potentiel_total <- sum(mytab) * (sum(mytab)-1)
  potentiel_outgroup <- potentiel_total - potentiel_ingroup
  
  res <- vector()
  res[[1]] <- nb_ingroup/potentiel_ingroup
  res[[2]] <- nb_outgroup/potentiel_outgroup
  res[[3]] <- (res[[1]]/(1-res[[1]]))/(res[[2]]/(1-res[[2]]))
  
  names(res) <- c("Prob. Ingroup","Prob. Outgroup","Odd-ratio")
  return(res)
}

odd_homophily(net_conjoints,"famille")
# Prob. Ingroup Prob. Outgroup      Odd-ratio 
# 0.013769363    0.006380368    2.174251577 
#  Dans ce cas, le rapport de cotes de 2.174251577 suggère que la probabilité de former un lien avec un individu du même groupe est environ 2.25 fois plus élevée que la probabilité de former un lien avec un individu d'un groupe différent.
# En résumé, ces résultats indiquent une tendance à l'homophilie dans le réseau, où les individus ont une probabilité plus élevée de former des liens avec d'autres individus appartenant au même groupe par rapport à des individus appartenant à des groupes différents.

#les deux mesures diverges car il y a plein de groupes possible vu que c'est que des liens deux à deux. regarder davantage odd ratio. La plupart des liens sont outgroup.
#ei-index mesure l'homophilie en faisant la somme de tout les mariages possible pour un pays et en le soustrayant avec les mariages ingroup donc forcement le resultat sera negatif, il indiquera moins d'homophilie que l'odd-ratio qui lui regarde simplement où il y a le plus de mariage
#odd_ratio mesure le nombre de mariage le plus fort simplement


# CENTRALITE D'INTERMEDIARITE - 3 années #####

# TEST 

# Boucle pour calculer la centralité d'intermédiarité par famille pour chaque année
for (year in c(1788, 1799, 1820)) {
  # Filtre pour l'année spécifique
  alive_year <- att$naissance < year & att$date_deces >= year
  att_year <- att[alive_year, ]
  conjoints_year <- conjoints[alive_year, alive_year]
  
  # Création du réseau de conjoints pour l'année spécifique
  net_conjoints <- network(conjoints_year)
  net_conjoints %v% "famille" <- att_year$famille
  
  # Création d'une nouvelle matrice d'adjacence pour les familles
  familles <- unique(att_year$famille)
  nb_familles <- length(familles)
  matrice_adj_familles <- matrix(0, nrow = nb_familles, ncol = nb_familles)
  rownames(matrice_adj_familles) <- colnames(matrice_adj_familles) <- familles
  
  # Remplissage de la matrice d'adjacence avec le nombre de liens entre les membres de chaque famille
  for (i in 1:nb_familles) {
    for (j in 1:nb_familles) {
      # Sélection des membres de la famille i
      membres_famille_i <- which(att_year$famille == familles[i])
      # Sélection des membres de la famille j
      membres_famille_j <- which(att_year$famille == familles[j])
      # Comptage du nombre de liens entre les membres des familles i et j
      matrice_adj_familles[i, j] <- sum(conjoints_year[membres_famille_i, membres_famille_j])
    }
  }
  
  # Création du réseau de familles à partir de la matrice d'adjacence
  net_familles <- network(matrice_adj_familles, directed = FALSE)
  
  # Calcul de la centralité d'intermédiarité pour le réseau de familles
  betweenness_familles <- betweenness(net_familles)
  
  # Affichage des valeurs de centralité d'intermédiarité pour chaque famille
  print(paste("Centralité d'intermédiarité par famille pour l'année", year))
  familles_centralite_1820 <- data.frame(Famille = familles, Centralite = betweenness_familles)
  print(familles_centralite_1820)
}



# Boucle pour calculer la centralité d'intermédiarité par année
for (year in c(1788, 1799, 1820)) {
  # Filtre pour l'année spécifique
  alive_year <- att$naissance < year & att$date_deces >= year
  att_year <- att[alive_year, ]
  conjoints_year <- conjoints[alive_year, alive_year]
  
  # Création du réseau de conjoints pour l'année spécifique
  net_conjoints <- network(conjoints_year)
  net_conjoints %v% "famille" <- att_year$famille
  
  # Calcul de la centralité d'intermédiarité pour le réseau de conjoints
  betweenness_centrality <- betweenness(net_conjoints)
  
  # Affichage des valeurs de centralité d'intermédiarité pour chaque nœud
  print(paste("Centralité d'intermédiarité pour l'année", year))
  print(betweenness_centrality)
  
  # On identifie les nœuds avec une centralité d'intermédiarité non nulle
  non_zero_nodes <- which(betweenness_centrality != 0)
  
  # On obtient les voisins des nœuds sélectionnés
  neighbors <- lapply(non_zero_nodes, function(node) {
    get.neighborhood(net_conjoints, node)
  })
  
  # On affiche les voisins de chaque nœud sélectionné
  for (i in seq_along(neighbors)) {
    cat("Voisins du nœud", non_zero_nodes[i], ":", neighbors[[i]], "\n")
  }
  
  # Il est alors intéressant de savoir à quelles familles ces numéros appartiennent
  familles_voisins <- lapply(neighbors, function(voisins) {
    get.vertex.attribute(net_conjoints, "famille")[voisins]
  })
  
  # Et on les affiche
  for (i in seq_along(familles_voisins)) {
    cat("Familles des voisins du nœud", non_zero_nodes[i], ":", familles_voisins[[i]], "\n")
  }
}


# SHRINK PAR FAMILLES - 3 années #####

# Boucle pour effectuer les étapes par année spécifique
for (year in c(1820)) {
  # Filtre pour l'année spécifique
  alive_year <- att$naissance < year & att$date_deces >= year
  att_year <- att[alive_year, ]
  conjoints_year <- conjoints[alive_year, alive_year]
  
  # Création du réseau de conjoints pour l'année spécifique
  net_conjoints <- network(conjoints_year)
  net_conjoints %v% "famille" <- att_year$famille
  
  # Calcul du "shrink" pour le réseau de conjoints
  net_famille <- mixingmatrix(net_conjoints, "famille")
  net_famille <- as.matrix(net_famille)
  net_famille <- net_famille[-which(is.na(dimnames(net_famille)[[1]])), 
                             -which(is.na(dimnames(net_famille)[[2]]))]  # Supprimer les lignes et colonnes avec des valeurs NA
  rownames(net_famille) <- colnames(net_famille)
  
  # Sauvegarde du "shrink" dans un fichier CSV
  filename <- paste0("famille_", year, ".csv")
  write.csv(net_famille, file = filename)
  
}

# Affichage du réseau de "shrink"
gplot(net_famille, edge.col = "grey70", arrowhead = 0, vertex.col = "steelblue", 
      displaylabels = TRUE, label.pos = 3, edge.lwd = 2)


# Boucle pour calculer la centralité d'intermédiarité par année
for (year in c(1788, 1799, 1820)) {
  # Filtre pour l'année spécifique
  alive_year <- att$naissance < year & att$date_deces >= year
  att_year <- att[alive_year, ]
  conjoints_year <- conjoints[alive_year, alive_year]
  
  # Création du réseau de conjoints pour l'année spécifique
  net_conjoints <- network(conjoints_year)
  net_conjoints %v% "famille" <- att_year$famille
  
  # Calcul de la centralité d'intermédiarité pour le réseau de conjoints
  betweenness_centrality <- betweenness(net_conjoints)
  
  # Affichage des valeurs de centralité d'intermédiarité pour chaque nœud
  print(paste("Centralité d'intermédiarité pour l'année", year))
  print(betweenness_centrality)
  
  # On identifie les nœuds avec une centralité d'intermédiarité non nulle
  non_zero_nodes <- which(betweenness_centrality != 0)
  
  # On obtient les voisins des nœuds sélectionnés
  neighbors <- lapply(non_zero_nodes, function(node) {
    get.neighborhood(net_conjoints, node)
  })
  
  # On affiche les voisins de chaque nœud sélectionné
  for (i in seq_along(neighbors)) {
    cat("Voisins du nœud", non_zero_nodes[i], ":", neighbors[[i]], "\n")
  }
  
  # Il est alors intéressant de savoir à quelles familles ces numéros appartiennent
  familles_voisins <- lapply(neighbors, function(voisins) {
    get.vertex.attribute(net_conjoints, "famille")[voisins]
  })
  
  # Et on les affiche
  for (i in seq_along(familles_voisins)) {
    cat("Familles des voisins du nœud", non_zero_nodes[i], ":", familles_voisins[[i]], "\n")
  }
}


# DISTANCE GEODESIQUE - 3 années #####

#Distance géodésique

#Création du reseau de tous les liens directs.
all <- conjoints+parents+siblings+enfants
all[all>1] <- 1
gden(all) # 0.04214824
gplot(all)
table(att$famille)

# On peut calculer les distances geodesiques de tout le monde.
mydist <- geodist(all)$gdist
rownames(mydist) <- rownames(all)
colnames(mydist) <- colnames(all)

diag(mydist) <- NA
mean(mydist,na.rm=T)
rowMeans(mydist)

#### SCRIPT POUR DISTANCES GEODESIQUES

# Voir les familles les plus peuplées
individus_orleans <- att$famille == "orleans"
sum(individus_orleans,na.rm = TRUE) # 6

individus_bourbon <- att$famille == "bourbon"
sum(individus_bourbon,na.rm = TRUE) # 54

individus_wettin <- att$famille == "wettin"
sum(individus_wettin,na.rm = TRUE) # 15

individus_wittelsbach <- att$famille == "wittelsbach"
sum(individus_wittelsbach,na.rm = TRUE) # 21

individus_habsbourg_lorraine <- att$famille == "habsbourg lorraine"
sum(individus_habsbourg_lorraine,na.rm = TRUE) # 30

individus_habsbourg_este <- att$famille == "habsbourg este"
sum(individus_habsbourg_este,na.rm = TRUE) # 11

individus_este <- att$famille == "este"
sum(individus_este,na.rm = TRUE) # 1

individus_palatinat_soulzbach <- att$famille == "palatinat soulzbach"
sum(individus_palatinat_soulzbach,na.rm = TRUE) # 2

individus_hesse <- att$famille == "hesse"
sum(individus_hesse,na.rm = TRUE) # 3

individus_habsbourg_toscane <- att$famille == "habsbourg toscane"
sum(individus_habsbourg_toscane,na.rm = TRUE) # 2

individus_arco <- att$famille == "arco"
sum(individus_arco,na.rm = TRUE) # 2

individus_berthier <- att$famille == "berthier"
sum(individus_berthier,na.rm = TRUE) # 3

individus_savoie <- att$famille == "savoie"
sum(individus_savoie,na.rm = TRUE) # 15

individus_lucchesi_palli <- att$famille == "lucchesi palli"
sum(individus_lucchesi_palli,na.rm = TRUE) # 3

individus_cybo_malaspina <- att$famille == "cybo malaspina"
sum(individus_cybo_malaspina,na.rm = TRUE) # 1

individus_linange <- att$famille == "linange"
sum(individus_linange,na.rm = TRUE) # 1

individus_saxe <- att$famille == "saxe"
sum(individus_saxe,na.rm = TRUE) # 1

individus_bade <- att$famille == "bade"
sum(individus_bade,na.rm = TRUE) # 1

individus_wurtemberg <- att$famille == "wurtemberg"
sum(individus_wurtemberg,na.rm = TRUE) # 2

individus_zahringen <- att$famille == "zahringen"
sum(individus_zahringen,na.rm = TRUE) # 1

individus_NA <- att$famille == "NA"
sum(individus_NA,na.rm = TRUE) # 4

individus_romanov <- att$famille == "romanov"
sum(individus_romanov,na.rm = TRUE) # 1

individus_arenberg <- att$famille == "arenberg"
sum(individus_arenberg,na.rm = TRUE) # 1

individus_meran <- att$famille == "meran"
sum(individus_meran,na.rm = TRUE) # 1

individus_pallavicini <- att$famille == "pallavicini"
sum(individus_pallavicini,na.rm = TRUE) # 1

# Les 3 familles les plus peuplées sont la famille Bourbon, la famille Habsbourg Lorraine et , la famille Wittelsbach

# On commence par la famille Bourbon

annees <- c(1788,1799,1820)

for(year in annees) {
  
  # 1ere étape : identifier les individus vivants en year.
  alive_year <- att$naissance<year & att$date_deces>=year
  
  # 2nde étape : utiliser ce vecteur logique pour indexer
  # les data frames et les matrices.
  att_year <- att[alive_year,]
  parents_year <- parents[alive_year,alive_year]
  enfants_year <- enfants[alive_year,alive_year]
  conjoints_year <- conjoints[alive_year,alive_year]
  all_year <- all[alive_year,alive_year]
  
  mydist <- geodist(all_year)$gdist
  rownames(mydist) <- rownames(all_year)
  colnames(mydist) <- colnames(all_year)
  
  diag(mydist) <- NA
  mydist_fini <- mydist
  mydist_fini[!is.finite(mydist)] <- NA
  mean(mydist,na.rm=TRUE)
  rowMeans(mydist_fini)
  
  # Pour la famille Bourbon
  individus_bourbon <- att_year$famille == "bourbon"
  
  # Créer une matrice pour les individus n'appartenant pas à la famille "Bourbon"
  individus_non_bourbon <- setdiff(1:nrow(mydist_fini), individus_bourbon)
  
  # Extraire les distances géodésiques entre les individus de la famille "Bourbon"
  distances_bourbon <- mydist_fini[individus_bourbon, individus_bourbon]
  
  # Extraire les distances géodésiques entre les individus de la famille "Bourbon" et les individus des autres familles
  distances_bourbon_non_bourbon <- mydist_fini[individus_bourbon, individus_non_bourbon]
  
  # Calculer les moyennes des distances géodésiques
  moyenne_bourbon <- mean(distances_bourbon,na.rm=T)
  moyenne_bourbon_non_bourbon <- mean(distances_bourbon_non_bourbon,na.rm=T)
  
  # Afficher les moyennes des distances géodésiques
  print(year)
  print("Moyenne des distances géodésiques entre les individus de la famille Bourbon :")
  print(moyenne_bourbon)
  print("Moyenne des distances géodésiques entre les individus de la famille Bourbon et les individus non-Bourbon :")
  print(moyenne_bourbon_non_bourbon)
}

# Pour la famille Habsbourg Lorraine

for(year in annees) {
  
  # 1ere étape : identifier les individus vivants en year.
  alive_year <- att$naissance<year & att$date_deces>=year
  
  # 2nde étape : utiliser ce vecteur logique pour indexer
  # les data frames et les matrices.
  att_year <- att[alive_year,]
  parents_year <- parents[alive_year,alive_year]
  enfants_year <- enfants[alive_year,alive_year]
  conjoints_year <- conjoints[alive_year,alive_year]
  all_year <- all[alive_year,alive_year]
  
  mydist <- geodist(all_year)$gdist
  rownames(mydist) <- rownames(all_year)
  colnames(mydist) <- colnames(all_year)
  
  diag(mydist) <- NA
  mydist_fini <- mydist
  mydist_fini[!is.finite(mydist)] <- NA
  mean(mydist,na.rm=TRUE)
  rowMeans(mydist_fini)
  
  # Pour la famille Habsbourg Lorraine
  individus_habsbourg_lorraine <- att_year$famille == "habsbourg lorraine"
  
  # Créer une matrice pour les individus n'appartenant pas à la famille "Habsbourg Lorraine"
  individus_non_habsbourg_lorraine <- setdiff(1:nrow(mydist_fini), individus_habsbourg_lorraine)
  
  # Extraire les distances géodésiques entre les individus de la famille "Habsbourg Lorraine"
  distances_habsbourg_lorraine <- mydist_fini[individus_habsbourg_lorraine, individus_habsbourg_lorraine]
  
  # Extraire les distances géodésiques entre les individus de la famille "Habsbourg Lorraine" et les individus des autres familles
  distances_habsbourg_lorraine_non_habsbourg_lorraine <- mydist_fini[individus_habsbourg_lorraine, individus_non_habsbourg_lorraine]
  
  # Calculer les moyennes des distances géodésiques
  moyenne_habsbourg_lorraine <- mean(distances_habsbourg_lorraine,na.rm=T)
  moyenne_habsbourg_lorraine_non_habsbourg_lorraine <- mean(distances_habsbourg_lorraine_non_habsbourg_lorraine,na.rm=T)
  
  # Afficher les moyennes des distances géodésiques
  print(year)
  print("Moyenne des distances géodésiques entre les individus de la famille Habsbourg Lorraine :")
  print(moyenne_habsbourg_lorraine)
  print("Moyenne des distances géodésiques entre les individus de la famille Habsbourg Lorraine et les individus non-Habsbourg Lorraine :")
  print(moyenne_habsbourg_lorraine_non_habsbourg_lorraine)
}


# Et finalement pour la famille Wittelsbach


for(year in annees) {
  
  # 1ere étape : identifier les individus vivants en year.
  alive_year <- att$naissance<year & att$date_deces>=year
  
  # 2nde étape : utiliser ce vecteur logique pour indexer
  # les data frames et les matrices.
  att_year <- att[alive_year,]
  parents_year <- parents[alive_year,alive_year]
  enfants_year <- enfants[alive_year,alive_year]
  conjoints_year <- conjoints[alive_year,alive_year]
  all_year <- all[alive_year,alive_year]
  
  mydist <- geodist(all_year)$gdist
  rownames(mydist) <- rownames(all_year)
  colnames(mydist) <- colnames(all_year)
  
  diag(mydist) <- NA
  mydist_fini <- mydist
  mydist_fini[!is.finite(mydist)] <- NA
  mean(mydist,na.rm=TRUE)
  rowMeans(mydist_fini)
  
  # Pour la famille Savoie
  individus_wittelsbach <- att_year$famille == "wittelsbach"
  
  # Créer une matrice pour les individus n'appartenant pas à la famille "Savoie"
  individus_non_wittelsbach <- setdiff(1:nrow(mydist_fini), individus_wittelsbach)
  
  # Extraire les distances géodésiques entre les individus de la famille "Savoie"
  distances_wittelsbach <- mydist_fini[individus_wittelsbach, individus_wittelsbach]
  
  # Extraire les distances géodésiques entre les individus de la famille "Savoie" et les individus des autres familles
  distances_wittelsbach_non_wittelsbach <- mydist_fini[individus_wittelsbach, individus_non_wittelsbach]
  
  # Calculer les moyennes des distances géodésiques
  moyenne_wittelsbach <- mean(distances_wittelsbach,na.rm=T)
  moyenne_wittelsbach_non_wittelsbach <- mean(distances_wittelsbach_non_wittelsbach,na.rm=T)
  
  # Afficher les moyennes des distances géodésiques
  print(year)
  print("Moyenne des distances géodésiques entre les individus de la famille Wittelsbach :")
  print(moyenne_wittelsbach)
  print("Moyenne des distances géodésiques entre les individus de la famille Wittelsbach et les individus non-Wittelsbach :")
  print(moyenne_wittelsbach_non_wittelsbach)
}