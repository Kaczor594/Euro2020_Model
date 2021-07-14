Here is some sample code on how I built a model to predict the "2020 Euros" this past summer. 
The model uses results from competitive club matches in the top 5 leagues over the past two seasons as a proxy for the offensive and defensive quality of each player. For players that do not play for a club in the top 5 leagues, I unfortunately had to apply an offensive and defensive rating equal to that of a team in the lower quartile (worse than the best three fourths of top 5 league clubs, but better than worst fourth). If I had more time and data, the first thing I would have added was better ratings for players and clubs outside the top 5 leagues. Using the 26 player rosters announced by each team prior to the start of the tournament, I then used a weighted average of the offensive and defensive ratings of each player on each roster to create an offensive and defensive rating for each national team. I weighted each player's influence on the team by their value according to TransferMarkt.com, but adjusted the weights so that even the least valuable player had at least about a 2% influence on the team's overall ratings. 
This sample code uses a Poisson generalized linear model to come up with the offensive and defensive ratings for players and teams. I have also found that using expected goals data from FBRef.com (which uses StatsBomb xG data), can be fairly well adapted into a similar model and yields slightly differing, but mostly similar results. 