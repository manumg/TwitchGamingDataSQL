/*
Queries used for Twitch Project
*/

--1. Have a look at the data

SELECT * 
FROM stream
LIMIT 20;

SELECT *
FROM chat
LIMIT 20;

--2. Which are the games analyzed? Which are the analyzed channels

SELECT DISTINCT game
FROM stream;

SELECT DISTINCT channel
FROM stream;

--3.Most popular games
SELECT game, COUNT(*)
FROM stream
GROUP BY 1
ORDER BY 2 DESC;

SELECT country, COUNT(*)
FROM stream
WHERE game = 'League of Legends'
GROUP BY 1
ORDER BY 2 DESC;

--4.Where are the users coming from(site, iphone, android...)?
SELECT player, COUNT(*)
FROM stream
GROUP BY 1 
ORDER BY 2 DESC;

--5. We do not have a genre column in the data set we are going to create one based on the following logic:
If League of Legends → MOBA
If Dota 2 → MOBA
If Heroes of the Storm → MOBA
If Counter-Strike: Global Offensive → FPS
If DayZ → Survival
If ARK: Survival Evolved → Survival
Else → Other

SELECT game, 
  CASE
    WHEN game = 'League of Legends'
      THEN 'MOBA'
    WHEN game = 'Dota 2'
      THEN 'MOBA
    WHEN game = 'Heroes of the Storm'
      THEN 'MOBA'
    WHEN game = 'Counter-Strike: Global Offensive'
      THEN 'FPS'
    WHEN game = 'DayZ'
      THEN 'Survival'
    WHEN game = 'ARK: Survival Evolved'
      THEN 'Survival'
    ELSE 'Other'
    END AS 'Genre',
    COUNT(*)
FROM stream
GROUP BY 1
ORDER BY 3 DESC;

--8.Let's see how the number of spectators is distributed at different times of the day in Spain:
SELECT strftime('%H', time),
   COUNT(*)
FROM stream
WHERE country = 'ES'
GROUP BY 1;

--9. Joining the stream and chat datasets
SELECT *
FROM stream
JOIN chat
  ON stream.device_id = chat.device_id;
