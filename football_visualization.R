
# Chargement des bibliothèques nécessaires
library(ggplot2)
library(dplyr)

# Création d'un jeu de données réaliste sur les joueurs de football
data <- data.frame(
  Player = c("Lionel Messi", "Cristiano Ronaldo", "Neymar Jr", "Kylian Mbappé", "Kevin De Bruyne", 
             "Robert Lewandowski", "Mohamed Salah", "Virgil van Dijk", "Sergio Ramos", "Alisson Becker"),
  Team = c("PSG", "Manchester United", "PSG", "PSG", "Manchester City", 
           "Bayern Munich", "Liverpool", "Liverpool", "PSG", "Liverpool"),
  Position = c("Forward", "Forward", "Forward", "Forward", "Midfielder", 
               "Forward", "Forward", "Defender", "Defender", "Goalkeeper"),
  Goals = c(30, 25, 20, 18, 12, 35, 22, 5, 7, 0),
  Assists = c(12, 10, 15, 9, 20, 10, 8, 2, 3, 0)
)

# Création du graphique avec facettes par position et points pour les équipes
p <- ggplot(data, aes(x = Goals, y = Assists, color = Team)) +
  geom_point(alpha = 0.7, size = 5) +
  facet_wrap(~ Position) +
  theme_minimal() +
  labs(title = "Performance des joueurs de football par position",
       x = "Nombre de buts",
       y = "Nombre de passes décisives",
       color = "Équipe")

# Sauvegarde du graphique
ggsave("football_visualization.png", plot = p)

# Affichage du graphique
print(p)
