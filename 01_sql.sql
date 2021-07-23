SHOW DATABSES;
use twitter;
SELECT first_name , handle , tweet FROM tweets JOIN users ON users.id = tweets.id;
INSERT INTO users (first_name , last_name , handle , birthday , created_at) VALUES ('adrian' , 'miranda' , 'gorylactics' , '1984-10-03' , NOW());
UPDATE users SET updated_at = NOW() WHERE id = 7;
DELETE FROM users WHERE first_name LIKE 'rodrigo';