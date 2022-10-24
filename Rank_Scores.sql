/*178. Rank Scores*/
/* Write your PL/SQL query statement below */
SELECT score, (DENSE_RANK() over(order by score DESC)) AS rank
FROM Scores