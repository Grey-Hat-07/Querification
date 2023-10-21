SELECT 
    contest_id, 
    ROUND(COUNT(user_id) * 100.0 / (SELECT COUNT(user_name) FROM Users ), 2) AS percentage
FROM Register 
GROUP BY contest_id
ORDER BY percentage DESC, contest_id;

/*

- ORDER BY percentage DESC, contest_id: The rows are first sorted based on the percentage column in descending order, and in case of ties, the contest_id is used to determine the final order in ascending order.

*/
