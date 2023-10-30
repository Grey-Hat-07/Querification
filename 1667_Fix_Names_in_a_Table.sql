
-- METHOD USING SUBSTR(string_name , start_index ,end_index)

SELECT Users.user_id , CONCAT(UPPER(SUBSTR(Users.name,1,1)),LOWER(SUBSTR(Users.name,2))) AS name 
FROM Users
ORDER BY
Users.user_id ASC

-- METHOD USING RIGHT(name_of_string, no_of_charachters)

SELECT Users.user_id, CONCAT(UPPER(LEFT(Users.name, 1)), LOWER(RIGHT(Users.name, LENGTH(Users.name)-1))) AS name
FROM Users
ORDER BY
Users.user_id ASC