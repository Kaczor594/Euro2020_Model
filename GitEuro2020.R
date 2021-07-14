# Download the data from the top 5 leagues, UCL, and UEL
FBRef_PL_20 <- read_excel("~/Downloads/FBRef_PL_20.xlsx")
FBRef_PL_21 <- read_excel("~/Downloads/FBRef_PL.xlsx")
FBRef_L1_20 <- read_excel("~/Downloads/FBRef_L1_20.xlsx")
FBRef_L1_21 <- read_excel("~/Downloads/FBRef_L1.xlsx")
FBRef_BL_20 <- read_excel("~/Downloads/FBRef_BL_20.xlsx")
FBRef_BL_21 <- read_excel("~/Downloads/FBRef_BL.xlsx")
FBRef_SA_20 <- read_excel("~/Downloads/FBRef_SA_20.xlsx")
FBRef_SA_21 <- read_excel("~/Downloads/FBRef_SA.xlsx")
FBRef_LL_20 <- read_excel("~/Downloads/FBRef_LL_20.xlsx")
FBRef_LL_21 <- read_excel("~/Downloads/FBRef_LL.xlsx")
FBRef_CL_20 <- read_excel("~/Downloads/FBRef_CL_20.xlsx")
FBRef_CL_21 <- read_excel("~/Downloads/FBRef_CL.xlsx")
FBRef_EL_20 <- read_excel("~/Downloads/FBRef_EL_20.xlsx")
FBRef_EL_21 <- read_excel("~/Downloads/FBRef_EL.xlsx")
# Rename the columns that had duplicate names initially
FBRef_PL_20 <- rename(FBRef_PL_20, HomexG = xG...6)
FBRef_PL_20 <- rename(FBRef_PL_20, AwayxG = xG...8)
FBRef_PL_21 <- rename(FBRef_PL_21, HomexG = xG...6)
FBRef_PL_21 <- rename(FBRef_PL_21, AwayxG = xG...8)
FBRef_L1_20 <- rename(FBRef_L1_20, HomexG = xG...6)
FBRef_L1_20 <- rename(FBRef_L1_20, AwayxG = xG...8)
FBRef_L1_21 <- rename(FBRef_L1_21, HomexG = xG...7)
FBRef_L1_21 <- rename(FBRef_L1_21, AwayxG = xG...9)
FBRef_BL_20 <- rename(FBRef_BL_20, HomexG = xG...7)
FBRef_BL_20 <- rename(FBRef_BL_20, AwayxG = xG...9)
FBRef_BL_21 <- rename(FBRef_BL_21, HomexG = xG...7)
FBRef_BL_21 <- rename(FBRef_BL_21, AwayxG = xG...9)
FBRef_SA_20 <- rename(FBRef_SA_20, HomexG = xG...6)
FBRef_SA_20 <- rename(FBRef_SA_20, AwayxG = xG...8)
FBRef_SA_21 <- rename(FBRef_SA_21, HomexG = xG...6)
FBRef_SA_21 <- rename(FBRef_SA_21, AwayxG = xG...8)
FBRef_LL_20 <- rename(FBRef_LL_20, HomexG = xG...6)
FBRef_LL_20 <- rename(FBRef_LL_20, AwayxG = xG...8)
FBRef_LL_21 <- rename(FBRef_LL_21, HomexG = xG...6)
FBRef_LL_21 <- rename(FBRef_LL_21, AwayxG = xG...8)
FBRef_CL_20 <- rename(FBRef_CL_20, HomexG = xG...7)
FBRef_CL_20 <- rename(FBRef_CL_20, AwayxG = xG...9)
FBRef_CL_21 <- rename(FBRef_CL_21, HomexG = xG...7)
FBRef_CL_21 <- rename(FBRef_CL_21, AwayxG = xG...9)
FBRef_EL_20 <- rename(FBRef_EL_20, HomexG = xG...7)
FBRef_EL_20 <- rename(FBRef_EL_20, AwayxG = xG...9)
FBRef_EL_21 <- rename(FBRef_EL_21, HomexG = xG...7)
FBRef_EL_21 <- rename(FBRef_EL_21, AwayxG = xG...9)
# Delete blank rows that come with the way the data is formatted originally
FBRef_PL_20 <- FBRef_PL_20[rowSums(is.na(FBRef_PL_20)) != ncol(FBRef_PL_20), ]
FBRef_PL_21 <- FBRef_PL_21[rowSums(is.na(FBRef_PL_21)) != ncol(FBRef_PL_21), ] 
FBRef_L1_20 <- FBRef_L1_20[rowSums(is.na(FBRef_L1_20)) != ncol(FBRef_L1_20), ]
FBRef_L1_21 <- FBRef_L1_21[rowSums(is.na(FBRef_L1_21)) != ncol(FBRef_L1_21), ]
FBRef_BL_20 <- FBRef_BL_20[rowSums(is.na(FBRef_BL_20)) != ncol(FBRef_BL_20), ]
FBRef_BL_21 <- FBRef_BL_21[rowSums(is.na(FBRef_BL_21)) != ncol(FBRef_BL_21), ]
FBRef_SA_20 <- FBRef_SA_20[rowSums(is.na(FBRef_SA_20)) != ncol(FBRef_SA_20), ]
FBRef_SA_21 <- FBRef_SA_21[rowSums(is.na(FBRef_SA_21)) != ncol(FBRef_SA_21), ]
FBRef_LL_20 <- FBRef_LL_20[rowSums(is.na(FBRef_LL_20)) != ncol(FBRef_LL_20), ]
FBRef_LL_21 <- FBRef_LL_21[rowSums(is.na(FBRef_LL_21)) != ncol(FBRef_LL_21), ]
FBRef_CL_20 <- FBRef_CL_20[rowSums(is.na(FBRef_CL_20)) != ncol(FBRef_CL_20), ]
FBRef_CL_21 <- FBRef_CL_21[rowSums(is.na(FBRef_CL_21)) != ncol(FBRef_CL_21), ]
FBRef_EL_20 <- FBRef_EL_20[rowSums(is.na(FBRef_EL_20)) != ncol(FBRef_EL_20), ]
FBRef_EL_21 <- FBRef_EL_21[rowSums(is.na(FBRef_EL_21)) != ncol(FBRef_EL_21), ]
# Get rid of the Relegation/Promotion playoff games
FBRef_BL_20 <- subset(FBRef_BL_20, Round == "Regular Season")
FBRef_BL_21 <- subset(FBRef_BL_21, Round == "Regular Season")
FBRef_L1_21 <- subset(FBRef_L1_21, Round == "Regular Season")
# Remove the round column to make sure the columns across all leagues lines up
FBRef_BL_20 <- subset(FBRef_BL_20, select = -Round)
FBRef_BL_21 <- subset(FBRef_BL_21, select = -Round)
FBRef_L1_21 <- subset(FBRef_L1_21, select = -Round)
FBRef_CL_20 <- subset(FBRef_CL_20, select = -Round)
FBRef_CL_21 <- subset(FBRef_CL_21, select = -Round)
FBRef_EL_20 <- subset(FBRef_EL_20, select = -Round)
FBRef_EL_21 <- subset(FBRef_EL_21, select = -Round)
# Combine the past two seasons of data for each league into one dataset
FBRef_PL <- rbind(FBRef_PL_20, FBRef_PL_21)
FBRef_L1 <- rbind(FBRef_L1_20, FBRef_L1_21)
FBRef_BL <- rbind(FBRef_BL_20, FBRef_BL_21)
FBRef_SA <- rbind(FBRef_SA_20, FBRef_SA_21)
FBRef_LL <- rbind(FBRef_LL_20, FBRef_LL_21)
FBRef_CL <- rbind(FBRef_CL_20, FBRef_CL_21)
FBRef_EL <- rbind(FBRef_EL_20, FBRef_EL_21)
# Remove all the country abreviations added by FBRef
## If someone has a better way of doing this PLEASE let me know
FBRef_CL$Home <- gsub(" ru", "", FBRef_CL$Home)
FBRef_CL$Home <- gsub(" ua", "", FBRef_CL$Home)
FBRef_CL$Home <- gsub(" eng", "", FBRef_CL$Home)
FBRef_CL$Home <- gsub(" es", "", FBRef_CL$Home)
FBRef_CL$Home <- gsub(" de", "", FBRef_CL$Home)
FBRef_CL$Home <- gsub(" fr", "", FBRef_CL$Home)
FBRef_CL$Home <- gsub(" it", "", FBRef_CL$Home)
FBRef_CL$Home <- gsub(" at", "", FBRef_CL$Home)
FBRef_CL$Home <- gsub(" nl", "", FBRef_CL$Home)
FBRef_CL$Home <- gsub(" dk", "", FBRef_CL$Home)
FBRef_CL$Home <- gsub(" gr", "", FBRef_CL$Home)
FBRef_CL$Home <- gsub(" pt", "", FBRef_CL$Home)
FBRef_CL$Home <- gsub(" tr", "", FBRef_CL$Home)
FBRef_CL$Home <- gsub(" hu", "", FBRef_CL$Home)
FBRef_CL$Home <- gsub(" be", "", FBRef_CL$Home)
FBRef_CL$Home <- gsub(" hr", "", FBRef_CL$Home)
FBRef_CL$Home <- gsub(" rs", "", FBRef_CL$Home)
FBRef_CL$Home <- gsub(" cz", "", FBRef_CL$Home)
# Then delete the abreviations for the home teams
FBRef_CL$Away <- gsub("ru ", "", FBRef_CL$Away)
FBRef_CL$Away <- gsub("ua ", "", FBRef_CL$Away)
FBRef_CL$Away <- gsub("eng ", "", FBRef_CL$Away)
FBRef_CL$Away <- gsub("es ", "", FBRef_CL$Away)
FBRef_CL$Away <- gsub("de ", "", FBRef_CL$Away)
FBRef_CL$Away <- gsub("fr ", "", FBRef_CL$Away)
FBRef_CL$Away <- gsub("it ", "", FBRef_CL$Away)
FBRef_CL$Away <- gsub("at ", "", FBRef_CL$Away)
FBRef_CL$Away <- gsub("nl ", "", FBRef_CL$Away)
FBRef_CL$Away <- gsub("dk ", "", FBRef_CL$Away)
FBRef_CL$Away <- gsub("gr ", "", FBRef_CL$Away)
FBRef_CL$Away <- gsub("pt ", "", FBRef_CL$Away)
FBRef_CL$Away <- gsub("tr ", "", FBRef_CL$Away)
FBRef_CL$Away <- gsub("hu ", "", FBRef_CL$Away)
FBRef_CL$Away <- gsub("be ", "", FBRef_CL$Away)
FBRef_CL$Away <- gsub("hr ", "", FBRef_CL$Away)
FBRef_CL$Away <- gsub("rs ", "", FBRef_CL$Away)
FBRef_CL$Away <- gsub("cz ", "", FBRef_CL$Away)
# Now same thing for Europa League 
FBRef_EL$Home <- gsub(" ru", "", FBRef_EL$Home)
FBRef_EL$Home <- gsub(" ua", "", FBRef_EL$Home)
FBRef_EL$Home <- gsub(" eng", "", FBRef_EL$Home)
FBRef_EL$Home <- gsub(" es", "", FBRef_EL$Home)
FBRef_EL$Home <- gsub(" de", "", FBRef_EL$Home)
FBRef_EL$Home <- gsub(" fr", "", FBRef_EL$Home)
FBRef_EL$Home <- gsub(" it", "", FBRef_EL$Home)
FBRef_EL$Home <- gsub(" at", "", FBRef_EL$Home)
FBRef_EL$Home <- gsub(" nl", "", FBRef_EL$Home)
FBRef_EL$Home <- gsub(" ie", "", FBRef_EL$Home)
FBRef_EL$Home <- gsub(" ch", "", FBRef_EL$Home)
FBRef_EL$Home <- gsub(" hr", "", FBRef_EL$Home)
FBRef_EL$Home <- gsub(" be", "", FBRef_EL$Home)
FBRef_EL$Home <- gsub(" pl", "", FBRef_EL$Home)
FBRef_EL$Home <- gsub(" bg", "", FBRef_EL$Home)
FBRef_EL$Home <- gsub(" il", "", FBRef_EL$Home)
FBRef_EL$Home <- gsub(" gr", "", FBRef_EL$Home)
FBRef_EL$Home <- gsub(" sco", "", FBRef_EL$Home)
FBRef_EL$Home <- gsub(" pt", "", FBRef_EL$Home)
FBRef_EL$Home <- gsub(" cz", "", FBRef_EL$Home)
FBRef_EL$Home <- gsub(" az", "", FBRef_EL$Home)
FBRef_EL$Home <- gsub(" rs", "", FBRef_EL$Home)
FBRef_EL$Home <- gsub(" tr", "", FBRef_EL$Home)
FBRef_EL$Home <- gsub(" ro", "", FBRef_EL$Home)
FBRef_EL$Home <- gsub(" cy", "", FBRef_EL$Home)
FBRef_EL$Home <- gsub(" no", "", FBRef_EL$Home)
FBRef_EL$Home <- gsub(" dk", "", FBRef_EL$Home)
FBRef_EL$Home <- gsub(" kz", "", FBRef_EL$Home)
FBRef_EL$Home <- gsub(" lu", "", FBRef_EL$Home)
FBRef_EL$Home <- gsub(" hu", "", FBRef_EL$Home)
FBRef_EL$Home <- gsub(" sk", "", FBRef_EL$Home)
FBRef_EL$Home <- gsub(" se", "", FBRef_EL$Home)
# And those home team country abreviations too
FBRef_EL$Away <- gsub("ru ", "", FBRef_EL$Away)
FBRef_EL$Away <- gsub("ua ", "", FBRef_EL$Away)
FBRef_EL$Away <- gsub("eng ", "", FBRef_EL$Away)
FBRef_EL$Away <- gsub("es ", "", FBRef_EL$Away)
FBRef_EL$Away <- gsub("de ", "", FBRef_EL$Away)
FBRef_EL$Away <- gsub("fr ", "", FBRef_EL$Away)
FBRef_EL$Away <- gsub("it ", "", FBRef_EL$Away)
FBRef_EL$Away <- gsub("at ", "", FBRef_EL$Away)
FBRef_EL$Away <- gsub("nl ", "", FBRef_EL$Away)
FBRef_EL$Away <- gsub("ie ", "", FBRef_EL$Away)
FBRef_EL$Away <- gsub("ch ", "", FBRef_EL$Away)
FBRef_EL$Away <- gsub("hr ", "", FBRef_EL$Away)
FBRef_EL$Away <- gsub("be ", "", FBRef_EL$Away)
FBRef_EL$Away <- gsub("pl ", "", FBRef_EL$Away)
FBRef_EL$Away <- gsub("bg ", "", FBRef_EL$Away)
FBRef_EL$Away <- gsub("il ", "", FBRef_EL$Away)
FBRef_EL$Away <- gsub("gr ", "", FBRef_EL$Away)
FBRef_EL$Away <- gsub("sco ", "", FBRef_EL$Away)
FBRef_EL$Away <- gsub("pt ", "", FBRef_EL$Away)
FBRef_EL$Away <- gsub("cz ", "", FBRef_EL$Away)
FBRef_EL$Away <- gsub("az ", "", FBRef_EL$Away)
FBRef_EL$Away <- gsub("rs ", "", FBRef_EL$Away)
FBRef_EL$Away <- gsub("tr ", "", FBRef_EL$Away)
FBRef_EL$Away <- gsub("ro ", "", FBRef_EL$Away)
FBRef_EL$Away <- gsub("cy ", "", FBRef_EL$Away)
FBRef_EL$Away <- gsub("no ", "", FBRef_EL$Away)
FBRef_EL$Away <- gsub("dk ", "", FBRef_EL$Away)
FBRef_EL$Away <- gsub("kz ", "", FBRef_EL$Away)
FBRef_EL$Away <- gsub("lu ", "", FBRef_EL$Away)
FBRef_EL$Away <- gsub("hu ", "", FBRef_EL$Away)
FBRef_EL$Away <- gsub("sk ", "", FBRef_EL$Away)
FBRef_EL$Away <- gsub("se ", "", FBRef_EL$Away)
# Add back in poor Lech Poznań whose name was mutilated during the removal of country abreviations
FBRef_EL$Away[FBRef_EL$Away  == "LePoznań"]  <-  "Lech Poznań"
# Add in a column to clarify whcih league each match took place in before making the big dataset
FBRef_PL$League <- rep("Premier League", length(FBRef_PL$Home))
FBRef_L1$League <- rep("Ligue Un", length(FBRef_L1$Home))
FBRef_BL$League <- rep("Bundesliga", length(FBRef_BL$Home))
FBRef_SA$League <- rep("Serie A", length(FBRef_SA$Home))
FBRef_LL$League <- rep("La Liga", length(FBRef_LL$Home))
FBRef_CL$League <- rep("Champions League", length(FBRef_CL$Home))
FBRef_EL$League <- rep("Europa League", length(FBRef_EL$Home))
# Combine all the data into one big dataset
Euro_2020 <- rbind(FBRef_PL, FBRef_L1, FBRef_BL, FBRef_SA, FBRef_LL, FBRef_CL, FBRef_EL)
# Seperate the Home and Away goals into their own columns and label them
Euro_2020 <- separate(data = Euro_2020, col = Score, into = c("FTHG", "FTAG"))
Euro_2020$FTHG <- as.numeric(as.character(Euro_2020$FTHG))
Euro_2020$FTAG <- as.numeric(as.character(Euro_2020$FTAG))
# Remove the few games for which there is missing data on the goals and/or xG
## Luckliy this is only a few games out of tens of thousands, with a smaller dataset 
## I would suggest finding an alternative to deleting these games
Euro_2020 <- subset(Euro_2020, HomexG >= 0)
Euro_2020 <- subset(Euro_2020, AwayxG >= 0)
Euro_2020 <- subset(Euro_2020, FTHG >= 0)
Euro_2020 <- subset(Euro_2020, FTAG >= 0)
# This uses a Poisson glm to create ratings for the offensive and defensive quality of each team 
# based on the goals scored and conceded in the 'Euro_2020' dataset
Euro_Poisson <- 
  rbind(
    data.frame(goals=Euro_2020$FTHG,
               team=Euro_2020$Home,
               opponent=Euro_2020$Away),
    data.frame(goals=Euro_2020$FTAG,
               team=Euro_2020$Away,
               opponent=Euro_2020$Home)) %>%
  glm(goals ~ team + opponent, family=poisson, data =.)
# Create a new dataset to store all of the ratings in
Euro_Club_Ratings <- data.frame(Club = unique(Euro_2020$Home))
# Add in some plank rows to fill in for all of the teams included in the data
Euro_Club_Ratings$ORating <- rep(NA, 176)
Euro_Club_Ratings$DRating <- rep(NA, 176)
# Use a for() loop to add them all in from the glm model
# I usually get a "subscript out of bounds error message when running this, but it still works
for (i in 1:176) {
  Euro_Club_Ratings$ORating[i] <- Euro_Poisson[["coefficients"]][[as.character(paste("team", Euro_Club_Ratings$Club[i], sep = ""))]]
  Euro_Club_Ratings$DRating[i] <- Euro_Poisson[["coefficients"]][[as.character(paste("opponent", Euro_Club_Ratings$Club[i], sep = ""))]]
}

#########################################################################################
# Create a data frame for the Italian team
                          # First add the jersey numbers as an ID for each player
Italy_Team <- data.frame(Number = c(18, 23, 21, 14, 6, 10, 8, 7, 17, 9, 11, 5, 4, 2, 
                                     26, 16, 25, 20, 22, 24, 12, 13, 15, 19, 1, 3),
                         # Then add in the TransferMarkt value of each player
                          Value = c(65, 60, 60, 60, 55, 48, 40, 40, 38, 35, 35, 35, 26, 
                                    24, 20, 18, 15, 15, 15, 13, 13, 12, 10, 8, 2.5, 1.5),
                         # Calculate the proportional value of each player to the team
                         # I added the mean value of players on the team to each players value in order to even 
                         # out the individual influence of each player a little more 
                          PropValue = ((Italy_Team$Value + 29.38462)/sum(Italy_Team$Value, 29.38462*26)),
                         # Enter the club that each player plays for
                          Club = c("Inter", "Inter", "Milan", "Juventus", "Paris S-G", "Napoli", 
                                   "Chelsea", "Roma", "Lazio", "Torino", "Sassuolo", "Sassuolo", "Roma",
                                   "Napoli", "Napoli", "Roma", "Atalanta", "Juventus", "Sassuolo", "Paris S-G",
                                   "Inter", "Chelsea", "Lazio", "Juventus", "Torino", "Juventus"),
                         # This will be used to hold the club offensive and defensive ratings which will be used as 
                         # a proxy for each individual player
                          Off_Coeff = rep(NA, 26),
                          Def_Coeff = rep(NA, 26))
# Adding in the ratings from the data we put together earlier
Italy_Team <- merge(Euro_Club_Ratings, Italy_Team, by = "Club")
Italy_Team$Off_Coeff <- Italy_Team$PropValue*Italy_Team$ORating
Italy_Team$Def_Coeff <- Italy_Team$PropValue*Italy_Team$DRating
# Store the weighted average offensive and defensive ratings as a proxy for the national team as a whole
Italy <- data.frame( Offense = sum(Italy_Team$Off_Coeff),
                      Defense = sum(Italy_Team$Def_Coeff))

#########################################################################################
# Repeat the same thing you did for Italy for all of the other teams in the tournament
Swiss_Team <- data.frame(Number = c(5, 6, 4, 8, 10, 7, 15, 9, 11, 23, 2, 22, 21, 1, 
                                     26, 20, 24, 12, 18, 3, 17, 16, 19, 14, 13, 25),
                          Value = c(30, 30, 28, 25, 22, 16, 15, 14, 13, 12, 12, 9, 8, 
                                    6, 6, 5, 5, 4.5, 4, 4, 3, 3, 2.5, 2.5, 2, 2),
                          PropValue = ((Swiss_Team$Value + 10.90385)/sum(Swiss_Team$Value, 10.90385*26)),
                          Club = c("Dortmund", "M'Gladbach", "M'Gladbach", "Atalanta", "Arsenal", "M'Gladbach", 
                                   "Eint Frankfurt", "Sporting CP", "Augsburg", "Liverpool", "Wolfsburg", "Newcastle Utd", "Montpellier",
                                   "M'Gladbach", "Nice", "Mainz 05", "Sporting CP", "Sporting CP", "Wolfsburg", "Sporting CP",
                                   "Bordeaux", "Sporting CP", "Sporting CP", "Eint Frankfurt", "Torino", "Sporting CP"),
                          Off_Coeff = rep(NA, 26),
                          Def_Coeff = rep(NA, 26))
Swiss_Team <- merge(Euro_Club_Ratings, Swiss_Team, by = "Club")
Swiss_Team$Off_Coeff <- Swiss_Team$PropValue*Swiss_Team$ORating
Swiss_Team$Def_Coeff <- Swiss_Team$PropValue*Swiss_Team$DRating
Switzerland <- data.frame( Offense = sum(Swiss_Team$Off_Coeff),
                            Defense = sum(Swiss_Team$Def_Coeff))

#########################################################################################

Turkish_Team <- data.frame(Number = c(4, 10, 3, 15, 2, 11, 23, 7, 12, 19, 21, 6, 25, 20, 
                                    5, 16, 22, 14, 8, 24, 26, 17, 9, 1, 13, 18),
                         Value = c(45, 35, 28, 25, 20, 20, 19, 18, 14, 12, 11, 11, 9, 
                                   8.5, 7.5, 7, 6, 6, 4.7, 3.5, 2.9, 2.8, 2.5, 2.4, 2.2, 2),
                         PropValue = ((Turkish_Team$Value + 12.5)/sum(Turkish_Team$Value, 12.5*26)),
                         Club = c("Leicester City", "Milan", "Juventus", "Liverpool", "Lille", "Lille", 
                                  "Sporting CP", "Leicester City", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Sassuolo",
                                  "Sporting CP", "West Brom", "Getafe", "Sassuolo", "Sporting CP", "Sporting CP", "Sporting CP",
                                  "Sporting CP", "Lille", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP"),
                         Off_Coeff = rep(NA, 26),
                         Def_Coeff = rep(NA, 26))
Turkish_Team <- merge(Euro_Club_Ratings, Turkish_Team, by = "Club")
Turkish_Team$Off_Coeff <- Turkish_Team$PropValue*Turkish_Team$ORating
Turkish_Team$Def_Coeff <- Turkish_Team$PropValue*Turkish_Team$DRating
Turkey <- data.frame( Offense = sum(Turkish_Team$Off_Coeff),
                       Defense = sum(Turkish_Team$Def_Coeff))

#########################################################################################

Wales_Team <- data.frame(Number = c(11, 20, 8, 4, 19, 15, 10, 6, 3, 24, 12, 9, 22, 13, 
                                     14, 7, 17, 5, 1, 26, 2, 21, 23, 18, 25, 16),
                          Value = c(18, 18, 17, 16, 16, 15, 14, 10, 8, 7, 6, 6, 6, 
                                    5, 4.5, 2, 1.5, 1.2, 1, 1, .8, .7, .65, .5, .5, .4),
                          PropValue = ((Wales_Team$Value + 6.798077)/sum(Wales_Team$Value, 6.798077*26)),
                          Club = c("Tottenham", "Manchester Utd", "Liverpool", "Tottenham", "Sporting CP", "Chelsea", 
                                   "Juventus", "Tottenham", "Liverpool", "Sporting CP", "Leicester City", "Leeds United", "Sporting CP",
                                   "Sporting CP", "Sporting CP", "Sporting CP", "Sheffield Utd", "Sporting CP", "Crystal Palace", "Sporting CP",
                                   "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP"),
                          Off_Coeff = rep(NA, 26),
                          Def_Coeff = rep(NA, 26))
Wales_Team <- merge(Euro_Club_Ratings, Wales_Team, by = "Club")
Wales_Team$Off_Coeff <- Wales_Team$PropValue*Wales_Team$ORating
Wales_Team$Def_Coeff <- Wales_Team$PropValue*Wales_Team$DRating
Wales <- data.frame( Offense = sum(Wales_Team$Off_Coeff),
                      Defense = sum(Wales_Team$Def_Coeff))

#########################################################################################

Belgian_Team <- data.frame(Number = c(7, 9, 1, 8, 10, 11, 19, 21, 16, 18, 25, 26, 24, 17, 
                                       15, 2, 23, 6, 20, 14, 12, 4, 13, 5, 22, 3),
                            Value = c(100, 100, 60, 55, 40, 40, 30, 28, 27, 25, 22, 18, 17, 
                                      13, 12, 11, 10, 9, 9, 9, 8, 8, 6.5, 6, 5, 0.9),
                            PropValue = ((Belgian_Team$Value + 25.74615)/sum(Belgian_Team$Value, 25.74615*26)),
                            Club = c("Manchester City", "Inter", "Real Madrid", "Leicester City", "Real Madrid", "Atlético Madrid", 
                                     "Wolves", "Leicester City", "Dortmund", "Lyon", "Rennes", "Leicester City", "Brighton",
                                     "Sporting CP", "Dortmund", "Tottenham", "Chelsea", "Dortmund", "Crystal Palace", "Napoli",
                                     "Sporting CP", "Hertha BSC", "Strasbourg", "Sporting CP", "Sporting CP", "Sporting CP"),
                            Off_Coeff = rep(NA, 26),
                            Def_Coeff = rep(NA, 26))
Belgian_Team <- merge(Euro_Club_Ratings, Belgian_Team, by = "Club")
Belgian_Team$Off_Coeff <- Belgian_Team$PropValue*Belgian_Team$ORating
Belgian_Team$Def_Coeff <- Belgian_Team$PropValue*Belgian_Team$DRating
Belgium <- data.frame( Offense = sum(Belgian_Team$Off_Coeff),
                        Defense = sum(Belgian_Team$Def_Coeff))

#########################################################################################

Dannish_Team <- data.frame(Number = c(10, 23, 6, 2, 20, 12, 3, 8, 5, 14, 4, 7, 9, 24, 
                                       18, 11, 1, 21, 19, 17, 15, 25, 22, 16, 13, 26),
                            Value = c(40, 35, 30, 22, 21, 20, 18, 15, 13, 13, 10, 10, 9, 
                                      8, 7, 6.5, 6, 6, 5, 4, 3.5, 2.5, 2.5, 1.5, 1.5, 0.7),
                            PropValue = ((Dannish_Team$Value + 11.95)/sum(Dannish_Team$Value, 11.95*26)),
                            Club = c("Inter", "Tottenham", "Chelsea", "Fulham", "RB Leipzig", "Nice", 
                                     "Southampton", "Dortmund", "Atalanta", "Sampdoria", "Milan", "Hoffenheim", "Barcelona",
                                     "Sporting CP", "Valencia", "Bologna", "Leicester City", "Parma", "Sporting CP", "Udinese",
                                     "Sporting CP", "Sporting CP", "Schalke 04", "Sporting CP", "Sporting CP", "Sporting CP"),
                            Off_Coeff = rep(NA, 26),
                            Def_Coeff = rep(NA, 26))
Dannish_Team <- merge(Euro_Club_Ratings, Dannish_Team, by = "Club")
Dannish_Team$Off_Coeff <- Dannish_Team$PropValue*Dannish_Team$ORating
Dannish_Team$Def_Coeff <- Dannish_Team$PropValue*Dannish_Team$DRating
Denmark <- data.frame( Offense = sum(Dannish_Team$Off_Coeff),
                        Defense = sum(Dannish_Team$Def_Coeff))

#########################################################################################

Finn_Team <- data.frame(Number = c(10, 1, 6, 26, 8, 18, 20, 9, 12, 5, 24, 21, 11, 16, 
                                    4, 7, 22, 15, 2, 17, 3, 19, 25, 13, 14, 23),
                         Value = c(7, 6, 6, 4.5, 3, 2.5, 2.5, 2, 1.7, 1.2, 1, 0.8, 0.7, 
                                   0.65, 0.6, 0.6, 0.5, 0.5, 0.45, 0.45, 0.45, 0.4, 0.35, 0.3, 0.25, 0.2),
                         PropValue = ((Finn_Team$Value + 1.715385)/sum(Finn_Team$Value, 1.715385*26)),
                         Club = c("Norwich City", "Leverkusen", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", 
                                  "Union Berlin", "Augsburg", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP",
                                  "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP",
                                  "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP"),
                         Off_Coeff = rep(NA, 26),
                         Def_Coeff = rep(NA, 26))
Finn_Team <- merge(Euro_Club_Ratings, Finn_Team, by = "Club")
Finn_Team$Off_Coeff <- Finn_Team$PropValue*Finn_Team$ORating
Finn_Team$Def_Coeff <- Finn_Team$PropValue*Finn_Team$DRating
Finland <- data.frame( Offense = sum(Finn_Team$Off_Coeff),
                        Defense = sum(Finn_Team$Def_Coeff))
#########################################################################################

Russian_Team <- data.frame(Number = c(17, 2, 15, 16, 11, 8, 22, 9, 14, 23, 4, 21, 7, 3, 
                                       19, 25, 6, 12, 24, 20, 1, 10, 26, 5, 13, 18),
                            Value = c(28, 16, 15, 14, 13, 12, 11, 11, 9, 8, 7, 6, 5, 
                                      5, 4, 4, 3.5, 3, 3, 2.8, 2.5, 2.5, 2.5, 1.8, 0.9, 0.3),
                            PropValue = ((Russian_Team$Value + 7.338462)/sum(Russian_Team$Value, 7.338462*26)),
                            Club = c("Monaco", "Sporting CP", "Atalanta", "Sporting CP", "Sporting CP", "Sporting CP", 
                                     "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP",
                                     "Sporting CP", "Sporting CP", "Sporting CP", "Valencia", "Sporting CP", "Sporting CP", "Sporting CP",
                                     "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP"),
                            Off_Coeff = rep(NA, 26),
                            Def_Coeff = rep(NA, 26))
Russian_Team <- merge(Euro_Club_Ratings, Russian_Team, by = "Club")
Russian_Team$Off_Coeff <- Russian_Team$PropValue*Russian_Team$ORating
Russian_Team$Def_Coeff <- Russian_Team$PropValue*Russian_Team$DRating
Russia <- data.frame( Offense = sum(Russian_Team$Off_Coeff),
                       Defense = sum(Russian_Team$Def_Coeff))

#########################################################################################

Austrian_Team <- data.frame(Number = c(8, 9, 23, 24, 19, 25, 4, 10, 15, 5, 21, 7, 22, 26, 
                                        3, 20, 11, 1, 14, 17, 6, 18, 16, 2, 13, 12),
                             Value = c(55, 42, 27, 26, 22, 22, 18, 18, 14, 13, 12.5, 10, 10, 
                                       7.5, 3.5, 3.5, 3, 3, 2, 2, 1.7, 1.5, 1.2, 0.8, 0.8, 0.6),
                             PropValue = ((Austrian_Team$Value + 12.33077)/sum(Austrian_Team$Value, 12.33077*26)),
                             Club = c("Bayern Munich", "RB Leipzig", "Wolfsburg", "RB Leipzig", "Hoffenheim", "Stuttgart", 
                                      "Eint Frankfurt", "Hoffenheim", "Freiburg", "Hoffenheim", "M'Gladbach", "Sporting CP", "M'Gladbach",
                                      "Werder Bremen", "Leverkusen", "Mainz 05", "Augsburg", "Sporting CP", "Leverkusen", "Sporting CP",
                                      "Eint Frankfurt", "Schalke 04", "Union Berlin", "Sporting CP", "Watford", "Wolfsburg"),
                             Off_Coeff = rep(NA, 26),
                             Def_Coeff = rep(NA, 26))
Austrian_Team <- merge(Euro_Club_Ratings, Austrian_Team, by = "Club")
Austrian_Team$Off_Coeff <- Austrian_Team$PropValue*Austrian_Team$ORating
Austrian_Team$Def_Coeff <- Austrian_Team$PropValue*Austrian_Team$DRating
Austria <- data.frame( Offense = sum(Austrian_Team$Off_Coeff),
                        Defense = sum(Austrian_Team$Def_Coeff))

#########################################################################################

Dutch_Team <- data.frame(Number = c(21, 3, 6, 10, 16, 4, 8, 19, 18, 15, 26, 5, 14, 24, 
                                     22, 17, 11, 7, 25, 9, 12, 2, 23, 13, 1),
                          Value = c(90, 75, 50, 45, 33, 32, 30, 30, 30, 23, 18, 17.5, 17, 
                                    16.5, 16, 15, 15, 12, 11, 10, 7, 6, 5, 2.5, 0.55),
                          PropValue = ((Dutch_Team$Value + 24.282)/sum(Dutch_Team$Value, 24.282*25)),
                          Club = c("Barcelona", "Juventus", "Inter", "Lyon", "Sporting CP", "Manchester City", 
                                   "Liverpool", "Wolfsburg", "Sporting CP", "Atalanta", "Sporting CP", "Sporting CP", "Sporting CP",
                                   "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Sevilla",
                                   "Crystal Palace", "Brighton", "Sporting CP", "Norwich City", "Sporting CP"),
                          Off_Coeff = rep(NA, 25),
                          Def_Coeff = rep(NA, 25))
Dutch_Team <- merge(Euro_Club_Ratings, Dutch_Team, by = "Club")
Dutch_Team$Off_Coeff <- Dutch_Team$PropValue*Dutch_Team$ORating
Dutch_Team$Def_Coeff <- Dutch_Team$PropValue*Dutch_Team$DRating
Netherlands <- data.frame( Offense = sum(Dutch_Team$Off_Coeff),
                            Defense = sum(Dutch_Team$Def_Coeff))

#########################################################################################

Macedonian_Team <- data.frame(Number = c(21, 17, 5, 8, 13, 14, 6, 1, 24, 25, 2, 16, 7, 10, 
                                          4, 26, 20, 15, 9, 22, 18, 23, 11, 12, 3, 19),
                               Value = c(17, 15, 8.5, 5, 2.5, 2, 1.4, 1.2, 1, 1, 0.8, 0.8, 0.7, 
                                         0.5, 0.5, 0.5, 0.45, 0.45, 0.4, 0.4, 0.4, 0.35, 0.3, 0.3, 0.25, 0.1),
                               PropValue = ((Macedonian_Team$Value + 2.376923)/sum(Macedonian_Team$Value, 2.376923*26)),
                               Club = c("Napoli", "Levante", "Sporting CP", "Leeds United", "Sporting CP", "Sporting CP", 
                                        "Sporting CP", "Sporting CP", "Sporting CP", "Stuttgart", "Sporting CP", "Sporting CP", "Sporting CP",
                                        "Genoa", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP",
                                        "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP"),
                               Off_Coeff = rep(NA, 26),
                               Def_Coeff = rep(NA, 26))
Macedonian_Team <- merge(Euro_Club_Ratings, Macedonian_Team, by = "Club")
Macedonian_Team$Off_Coeff <- Macedonian_Team$PropValue*Macedonian_Team$ORating
Macedonian_Team$Def_Coeff <- Macedonian_Team$PropValue*Macedonian_Team$DRating
NorthMacedonia <- data.frame( Offense = sum(Macedonian_Team$Off_Coeff),
                               Defense = sum(Macedonian_Team$Def_Coeff))

#########################################################################################

Ukrainian_Team <- data.frame(Number = c(8, 17, 15, 16, 9, 22, 10, 23, 6, 13, 21, 11, 1, 7, 
                                         4, 5, 25, 2, 18, 20, 19, 14, 24, 12, 26, 3),
                              Value = c(30, 25, 25, 17, 15, 11, 8, 8, 7.5, 6, 5, 5, 5, 
                                        4, 4, 4, 3.5, 3, 2, 2, 2, 1.2, 1.2, 1, 1, 0.8),
                              PropValue = ((Ukrainian_Team$Value + 7.584615)/sum(Ukrainian_Team$Value, 7.584615*26)),
                              Club = c("Atalanta", "Manchester City", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", 
                                       "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP",
                                       "West Ham", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP",
                                       "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP"),
                              Off_Coeff = rep(NA, 26),
                              Def_Coeff = rep(NA, 26))
Ukrainian_Team <- merge(Euro_Club_Ratings, Ukrainian_Team, by = "Club")
Ukrainian_Team$Off_Coeff <- Ukrainian_Team$PropValue*Ukrainian_Team$ORating
Ukrainian_Team$Def_Coeff <- Ukrainian_Team$PropValue*Ukrainian_Team$DRating
Ukraine <- data.frame( Offense = sum(Ukrainian_Team$Off_Coeff),
                        Defense = sum(Ukrainian_Team$Def_Coeff))

#########################################################################################

Croatian_Team <- data.frame(Number = c(8, 11, 17, 13, 9, 5, 15, 25, 1, 24, 18, 20, 7, 10, 
                                        6, 4, 14, 3, 26, 2, 21, 12, 22, 19, 16, 23),
                             Value = c(45, 40, 32, 30, 28, 25, 23, 19, 15, 13.5, 12, 12, 12, 
                                       10, 10, 10, 8, 6, 6, 5, 4, 2.5, 2.5, 2, 1.8, 1.5),
                             PropValue = ((Croatian_Team$Value + 14.45385)/sum(Croatian_Team$Value, 14.45385*26)),
                             Club = c("Chelsea", "Inter", "Milan", "Sporting CP", "Hoffenheim", "Marseille", 
                                      "Atalanta", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Wolfsburg",
                                      "Real Madrid", "Sporting CP", "Inter", "Sporting CP", "Sporting CP", "Lille", "Atlético Madrid",
                                      "Sporting CP", "Sporting CP", "Sporting CP", "Genoa", "Sporting CP", "Sporting CP"),
                             Off_Coeff = rep(NA, 26),
                             Def_Coeff = rep(NA, 26))
Croatian_Team <- merge(Euro_Club_Ratings, Croatian_Team, by = "Club")
Croatian_Team$Off_Coeff <- Croatian_Team$PropValue*Croatian_Team$ORating
Croatian_Team$Def_Coeff <- Croatian_Team$PropValue*Croatian_Team$DRating
Croatia <- data.frame( Offense = sum(Croatian_Team$Off_Coeff),
                        Defense = sum(Croatian_Team$Def_Coeff))

#########################################################################################

Czech_Team <- data.frame(Number = c(15, 9, 22, 7, 5, 14, 21, 2, 4, 23, 6, 1, 11, 19, 
                                     13, 8, 12, 20, 18, 26, 24, 10, 17, 16, 25, 3),
                          Value = c(40, 23, 17, 14, 12, 11, 10, 8, 7.5, 5.5, 4.5, 4, 4, 
                                    4, 3.5, 3.5, 3.5, 3, 2.5, 2.3, 2.2, 1.5, 1, 0.9, 0.9, 0.7),
                          PropValue = ((Czech_Team$Value + 7.307692)/sum(Czech_Team$Value, 7.307692*26)),
                          Club = c("West Ham", "Leverkusen", "Sporting CP", "Hellas Verona", "West Ham", "Sampdoria", 
                                   "Sporting CP", "Hoffenheim", "Sporting CP", "Werder Bremen", "Sporting CP", "Sevilla", "Sporting CP",
                                   "Sporting CP", "Sporting CP", "Hertha BSC", "Sporting CP", "Burnley", "Sporting CP", "Sporting CP",
                                   "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP"),
                          Off_Coeff = rep(NA, 26),
                          Def_Coeff = rep(NA, 26))
Czech_Team <- merge(Euro_Club_Ratings, Czech_Team, by = "Club")
Czech_Team$Off_Coeff <- Czech_Team$PropValue*Czech_Team$ORating
Czech_Team$Def_Coeff <- Czech_Team$PropValue*Czech_Team$DRating
CzechRepublic <- data.frame( Offense = sum(Czech_Team$Off_Coeff),
                              Defense = sum(Czech_Team$Def_Coeff))

#########################################################################################

English_Team <- data.frame(Number = c(9, 17, 10, 11, 20, 19, 7, 4, 25, 26, 6, 18, 21, 24, 
                                       3, 5, 15, 14, 2, 22, 16, 1, 13, 8, 12, 23),
                            Value = c(120, 100, 90, 85, 80, 75, 65, 65, 65, 55, 45, 45, 45, 
                                      40, 35, 30, 30, 30, 28, 28, 25, 22, 22, 20, 20, 8),
                            PropValue = ((English_Team$Value + 48.96154)/sum(English_Team$Value, 48.96154*26)),
                            Club = c("Tottenham", "Dortmund", "Manchester City", "Manchester Utd", "Manchester City", "Chelsea", 
                                     "Aston Villa", "West Ham", "Arsenal", "Dortmund", "Manchester Utd", "Everton", "Chelsea",
                                     "Chelsea", "Manchester Utd", "Manchester City", "Aston Villa", "Leeds United", "Manchester City", "Brighton",
                                     "Wolves", "Everton", "Manchester Utd", "Liverpool", "Atlético Madrid", "West Brom"),
                            Off_Coeff = rep(NA, 26),
                            Def_Coeff = rep(NA, 26))
English_Team <- merge(Euro_Club_Ratings, English_Team, by = "Club")
English_Team$Off_Coeff <- English_Team$PropValue*English_Team$ORating
English_Team$Def_Coeff <- English_Team$PropValue*English_Team$DRating
England <- data.frame( Offense = sum(English_Team$Off_Coeff),
                        Defense = sum(English_Team$Def_Coeff))

#########################################################################################

Scottish_Team <- data.frame(Number = c(3, 4, 6, 7, 10, 20, 23, 17, 16, 8, 11, 25, 14, 18, 
                                        5, 9, 24, 26, 19, 13, 22, 15, 2, 12, 21, 1),
                             Value = c(65, 35, 32, 30, 20, 10, 10, 8, 7, 7, 7, 6, 5, 
                                       5, 4, 3.5, 3.5, 3, 3, 2, 1.3, 0.75, 0.75, 0.45, 0.35, 0.25),
                             PropValue = ((Scottish_Team$Value + 10.37885)/sum(Scottish_Team$Value, 10.37885*26)),
                             Club = c("Liverpool", "Manchester Utd", "Arsenal", "Aston Villa", "Southampton", "Newcastle Utd", 
                                      "Chelsea", "Southampton", "Leeds United", "Sporting CP", "Sporting CP", "Sporting CP", "Sheffield Utd",
                                      "Sporting CP", "Norwich City", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP",
                                      "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP"),
                             Off_Coeff = rep(NA, 26),
                             Def_Coeff = rep(NA, 26))
Scottish_Team <- merge(Euro_Club_Ratings, Scottish_Team, by = "Club")
Scottish_Team$Off_Coeff <- Scottish_Team$PropValue*Scottish_Team$ORating
Scottish_Team$Def_Coeff <- Scottish_Team$PropValue*Scottish_Team$DRating
Scotland <- data.frame( Offense = sum(Scottish_Team$Off_Coeff),
                         Defense = sum(Scottish_Team$Def_Coeff))

#########################################################################################

Polish_Team <- data.frame(Number = c(9, 20, 1, 5, 10, 16, 18, 8, 4, 11, 2, 6, 14, 3, 
                                      21, 12, 26, 24, 23, 25, 15, 13, 19, 17, 22),
                           Value = c(60, 50, 25, 25, 15, 10, 6, 6, 5, 5, 5, 5, 4, 
                                     4, 4, 3.8, 3.5, 3, 3, 3, 2, 2, 2, 2, 1.5),
                           PropValue = ((Polish_Team$Value + 10.192)/sum(Polish_Team$Value, 10.192*25)),
                           Club = c("Bayern Munich", "Napoli", "Juventus", "Southampton", "Sporting CP", "Brighton", 
                                    "Sampdoria", "Torino", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Leeds United",
                                    "Hellas Verona", "Sporting CP", "Bologna", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP",
                                    "Benevento", "Sporting CP", "Sporting CP", "Norwich City", "West Ham"),
                           Off_Coeff = rep(NA, 25),
                           Def_Coeff = rep(NA, 25))
Polish_Team <- merge(Euro_Club_Ratings, Polish_Team, by = "Club")
Polish_Team$Off_Coeff <- Polish_Team$PropValue*Polish_Team$ORating
Polish_Team$Def_Coeff <- Polish_Team$PropValue*Polish_Team$DRating
Poland <- data.frame( Offense = sum(Polish_Team$Off_Coeff),
                       Defense = sum(Polish_Team$Def_Coeff))

#########################################################################################

Slovak_Team <- data.frame(Number = c(14, 22, 8, 1, 23, 13, 4, 3, 11, 17, 19, 6, 16, 5, 
                                      9, 10, 18, 20, 26, 25, 2, 7, 21, 24, 15, 12),
                           Value = c(60, 9, 8, 5, 5, 5, 5, 4, 4, 3, 3, 3, 2.7, 
                                     2.5, 2.5, 1.6, 1.3, 1.2, 1, 1, 0.8, 0.8, 0.6, 0.6, 0.3, 0.2),
                           PropValue = ((Slovak_Team$Value + 5.042308)/sum(Slovak_Team$Value, 5.042308*26)),
                           Club = c("Inter", "Napoli", "Köln", "Newcastle Utd", "Fulham", "Sporting CP", 
                                    "Sporting CP", "Sporting CP", "Augsburg", "Sporting CP", "Parma", "Sporting CP", "Sporting CP",
                                    "Sporting CP", "Sporting CP", "Sporting CP", "Sassuolo", "Sporting CP", "Sporting CP", "Sporting CP",
                                    "Hertha BSC", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP"),
                           Off_Coeff = rep(NA, 26),
                           Def_Coeff = rep(NA, 26))
Slovak_Team <- merge(Euro_Club_Ratings, Slovak_Team, by = "Club")
Slovak_Team$Off_Coeff <- Slovak_Team$PropValue*Slovak_Team$ORating
Slovak_Team$Def_Coeff <- Slovak_Team$PropValue*Slovak_Team$DRating
Slovakia <- data.frame( Offense = sum(Slovak_Team$Off_Coeff),
                         Defense = sum(Slovak_Team$Def_Coeff))

#########################################################################################

Spanish_Team <- data.frame(Number = c(6, 21, 16, 26, 8, 11, 4, 7, 24, 19, 17, 9, 14, 10, 
                                       20, 22, 18, 3, 23, 12, 1, 2, 5, 13),
                            Value = c(80, 70, 70, 70, 60, 50, 50, 45, 45, 45, 45, 40, 35, 
                                      30, 30, 22, 20, 20, 20, 20, 18, 13, 9, 8),
                            PropValue = ((Spanish_Team$Value + 38.125)/sum(Spanish_Team$Value, 38.125*24)),
                            Club = c("Atlético Madrid", "Real Sociedad", "Manchester City", "Barcelona", "Atlético Madrid", "Manchester City", 
                                     "Villarreal", "Juventus", "Manchester City", "RB Leipzig", "Napoli", "Villarreal", "Valencia",
                                     "Liverpool", "Wolves", "Paris S-G", "Barcelona", "Leeds United", "Athletic Club", "Manchester City",
                                     "Manchester Utd", "Chelsea", "Barcelona", "Brighton"),
                            Off_Coeff = rep(NA, 24),
                            Def_Coeff = rep(NA, 24))
Spanish_Team <- merge(Euro_Club_Ratings, Spanish_Team, by = "Club")
Spanish_Team$Off_Coeff <- Spanish_Team$PropValue*Spanish_Team$ORating
Spanish_Team$Def_Coeff <- Spanish_Team$PropValue*Spanish_Team$DRating
Spain <- data.frame( Offense = sum(Spanish_Team$Off_Coeff),
                      Defense = sum(Spanish_Team$Def_Coeff))

#########################################################################################

Swedish_Team <- data.frame(Number = c(11, 21, 3, 10, 25, 19, 17, 6, 22, 18, 26, 15, 16, 20, 
                                       14, 8, 1, 9, 23, 24, 12, 7, 2, 5, 13, 4),
                            Value = c(40, 40, 24, 20, 15, 12, 10, 10, 7.5, 5, 5, 4.5, 3.5, 
                                      3.5, 3.5, 3, 3, 1.2, 0.9, 0.8, 0.7, 0.6, 0.5, 0.35, 0.3, 0.2),
                            PropValue = ((Swedish_Team$Value + 8.271154)/sum(Swedish_Team$Value, 8.271154*26)),
                            Club = c("Real Sociedad", "Juventus", "Manchester Utd", "RB Leipzig", "Sporting CP", "Bologna", 
                                     "Sporting CP", "Werder Bremen", "Mainz 05", "Sporting CP", "Sporting CP", "Watford", "Newcastle Utd",
                                     "Sporting CP", "Sporting CP", "Sampdoria", "Everton", "Sporting CP", "Sporting CP", "Sporting CP",
                                     "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP"),
                            Off_Coeff = rep(NA, 26),
                            Def_Coeff = rep(NA, 26))
Swedish_Team <- merge(Euro_Club_Ratings, Swedish_Team, by = "Club")
Swedish_Team$Off_Coeff <- Swedish_Team$PropValue*Swedish_Team$ORating
Swedish_Team$Def_Coeff <- Swedish_Team$PropValue*Swedish_Team$DRating
Sweden <- data.frame( Offense = sum(Swedish_Team$Off_Coeff),
                       Defense = sum(Swedish_Team$Def_Coeff))

#########################################################################################

French_Team <- data.frame(Number = c(10, 4, 20, 6, 7, 25, 13, 11, 21, 3, 18, 22, 26, 2, 
                                      15, 14, 19, 5, 23, 8, 12, 24, 17, 1, 9, 16),
                           Value = c(160, 70, 65, 60, 60, 60, 55, 50, 45, 40, 35, 35, 35, 
                                     35, 32, 30, 25, 25, 25, 25, 20, 16, 10, 9, 4, 2),
                           PropValue = ((French_Team$Value + 39.53846)/sum(French_Team$Value, 39.53846*26)),
                           Club = c("Paris S-G", "Real Madrid", "Bayern Munich", "Manchester Utd", "Barcelona", "Sevilla", 
                                    "Chelsea", "Barcelona", "Bayern Munich", "Paris S-G", "Everton", "Monaco", "M'Gladbach",
                                    "Bayern Munich", "Chelsea", "Juventus", "Real Madrid", "Barcelona", "Lille", "Atlético Madrid",
                                    "Bayern Munich", "Lyon", "Tottenham", "Tottenham", "Chelsea", "Marseille"),
                           Off_Coeff = rep(NA, 26),
                           Def_Coeff = rep(NA, 26))
French_Team <- merge(Euro_Club_Ratings, French_Team, by = "Club")
French_Team$Off_Coeff <- French_Team$PropValue*French_Team$ORating
French_Team$Def_Coeff <- French_Team$PropValue*French_Team$DRating
France <- data.frame( Offense = sum(French_Team$Off_Coeff),
                       Defense = sum(French_Team$Def_Coeff))

#########################################################################################

German_Team <- data.frame(Number = c(6, 18, 10, 7, 11, 19, 8, 21, 14, 15, 20, 17, 25, 9, 
                                      4, 2, 16, 23, 12, 1, 24, 13, 3, 5, 26, 22),
                           Value = c(90, 70, 70, 70, 65, 60, 40, 40, 38, 35, 35, 35, 30, 
                                     30, 30, 28, 27, 26, 22, 18, 17, 16, 14, 12, 12, 6.5),
                           PropValue = ((German_Team$Value + 36.01923)/sum(German_Team$Value, 36.01923*26)),
                           Club = c("Bayern Munich", "Bayern Munich", "Bayern Munich", "Chelsea", "Chelsea", "Bayern Munich", 
                                    "Real Madrid", "Manchester City", "Bayern Munich", "Bayern Munich", "Atalanta", "M'Gladbach", "Bayern Munich",
                                    "Monaco", "M'Gladbach", "Chelsea", "RB Leipzig", "Dortmund", "Arsenal", "Bayern Munich",
                                    "Leeds United", "M'Gladbach", "RB Leipzig", "Dortmund", "Freiburg", "Eint Frankfurt"),
                           Off_Coeff = rep(NA, 26),
                           Def_Coeff = rep(NA, 26))
German_Team <- merge(Euro_Club_Ratings, German_Team, by = "Club")
German_Team$Off_Coeff <- German_Team$PropValue*German_Team$ORating
German_Team$Def_Coeff <- German_Team$PropValue*German_Team$DRating
Germany <- data.frame( Offense = sum(German_Team$Off_Coeff),
                        Defense = sum(German_Team$Def_Coeff))

#########################################################################################

Hungarian_Team <- data.frame(Number = c(6, 1, 20, 4, 12, 19, 7, 15, 8, 16, 11, 23, 18, 21, 
                                         2, 24, 3, 25, 5, 17, 13, 14, 26, 9, 22, 10),
                              Value = c(16, 13, 13, 7, 2.5, 2.5, 2.2, 2, 2, 1.5, 1.5, 1.2, 1, 
                                        1, 1, 1, 0.8, 0.75, 0.7, 0.7, 0.7, 0.65, 0.6, 0.4, 0.4, 0.4),
                              PropValue = ((Hungarian_Team$Value + 2.865385)/sum(Hungarian_Team$Value, 2.865385*26)),
                              Club = c("RB Leipzig", "RB Leipzig", "Freiburg", "Sporting CP", "Sporting CP", "Sporting CP", 
                                       "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP",
                                       "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP", "Sporting CP",
                                       "Sporting CP", "Sporting CP", "Sporting CP", "Mainz 05", "Sporting CP", "Sporting CP"),
                              Off_Coeff = rep(NA, 26),
                              Def_Coeff = rep(NA, 26))
Hungarian_Team <- merge(Euro_Club_Ratings, Hungarian_Team, by = "Club")
Hungarian_Team$Off_Coeff <- Hungarian_Team$PropValue*Hungarian_Team$ORating
Hungarian_Team$Def_Coeff <- Hungarian_Team$PropValue*Hungarian_Team$DRating
Hungary <- data.frame( Offense = sum(Hungarian_Team$Off_Coeff),
                        Defense = sum(Hungarian_Team$Def_Coeff))

#########################################################################################

Portugese_Team <- data.frame(Number = c(11, 23, 4, 10, 20, 7, 9, 18, 21, 5, 25, 16, 2, 17, 
                                         15, 19, 13, 24, 26, 14, 12, 22, 1, 8, 6, 3),
                              Value = c(90, 80, 75, 70, 55, 45, 45, 45, 45, 40, 40, 30, 28, 
                                        25, 23, 22, 20, 19, 18, 15, 14, 12, 10, 4, 1.5, 1),
                              PropValue = ((Portugese_Team$Value + 33.55769)/sum(Portugese_Team$Value, 33.55769*26)),
                              Club = c("Manchester Utd", "Atlético Madrid", "Manchester City", "Manchester City", "Manchester City", "Juventus", 
                                       "Eint Frankfurt", "Wolves", "Liverpool", "Dortmund", "Sporting CP", "Lille", "Wolves",
                                       "Valencia", "Sporting CP", "Sporting CP", "Paris S-G", "Sporting CP", "Sporting CP", "Betis",
                                       "Lyon", "Granada", "Wolves", "Wolves", "Lille", "Sporting CP"),
                              Off_Coeff = rep(NA, 26),
                              Def_Coeff = rep(NA, 26))
Portugese_Team <- merge(Euro_Club_Ratings, Portugese_Team, by = "Club")
Portugese_Team$Off_Coeff <- Portugese_Team$PropValue*Portugese_Team$ORating
Portugese_Team$Def_Coeff <- Portugese_Team$PropValue*Portugese_Team$DRating
Portugal <- data.frame( Offense = sum(Portugese_Team$Off_Coeff),
                         Defense = sum(Portugese_Team$Def_Coeff))

#########################################################################################
# Here's the code for predicting any given matchup in the tournament
# First assign the teams playing to CountryA and CountryB
CountryA <- England
CountryB <- Italy
# Simulate the number of goals scored by each team using the offensive and defensive coefficients we just created
# Feel free to change the number of simulated scores, at 20000 it is fairly accurate, 
# making it larger won't significantly increase the time either as far as I've found
sim.A <- rpois(n = 20000, lambda = exp(CountryA$Offense+CountryB$Defense))
sim.B <- rpois(n = 20000, lambda = exp(CountryB$Offense+CountryA$Defense))
# Add the simulated scores into one tibble (ignore the home and away, I'm assuming neutral venues this tournament)
Pred <- tibble(home.goals = sim.A,
               away.goals = sim.B,
               differential = sim.A-sim.B)
# Calculate the probability of a CountryA Win
A <- sum(Pred$differential>(0))/20000
# Calculate the probability of a CountryB Win
B<- sum(Pred$differential<(0))/20000
# If you want to know the probabilities in a knockout match just use the proportional win percentages
# In theory, both teams have the same chance of winning in extra time as they did in regular time
# In theory, both teams have a 50/50 chance of winning penalties meaning the probability of a draw can be evenly split
A/sum(A,B)
B/sum(A,B)
# Calculate the probability of a Draw
sum(Pred$differential==(0))/20000
# Make a nice little ggplot to visualize the probabilities of each team scoring each number of goals
ggplot(transform(data.frame(x=c(0:5))), aes(x)) + 
  geom_bar(stat="identity", aes(y=dpois(x, exp(CountryA$Offense+CountryB$Defense)), fill = "England", alpha = 0.25)) +
  geom_bar(stat="identity", aes(y=dpois(x, exp(CountryB$Offense+CountryA$Defense)), fill = "Italy", alpha = 0.25)) +
  scale_fill_discrete(name = "Teams") +
  xlab("Number of Goals") +
  ylab("Probability") +
  scale_x_continuous(breaks = seq(0, 5, by = 1)) +
  guides(alpha = "none")
# Thanks for reading, please feel free to share any observations, suggestions, or improvements!
# This is by no means a perfect model, but I thought it was a fun and interesting model that yielded
# surprisingly accurate results/predicitons
# Would definitiely be interested if anyone is able to make significant improvements and test them

