#LEVEL 3
#TASK 2: VOTES ANALYSIS 
#1. IDENTIFY THE REST WITH HIGHEST AND LOWEST NUMBER OF VOTES

USE TASKS;
-- Rest with highest votes
SELECT `Restaurant Name`, Votes
FROM COGNIFYZ
WHERE Votes = (
    SELECT MAX(Votes) FROM COGNIFYZ
);

-- Restaurant with lowest votes
SELECT `Restaurant Name`, Votes
FROM cognifyz
WHERE Votes = (
    SELECT MIN(Votes) FROM cognifyz
);
 
 
#2. ANALYZE IF THERE IS A CORRELATION BTW THE NO OF VOTES AND RATINGS OF REST.
-- AVG VOTES PER RATING
SELECT 
    `Aggregate rating`, 
    COUNT(*) AS total_restaurants,
    AVG(Votes) AS avg_votes
FROM COGNIFYZ
WHERE Votes IS NOT NULL AND `Aggregate rating` IS NOT NULL
GROUP BY `Aggregate rating`
ORDER BY `Aggregate rating` DESC;


