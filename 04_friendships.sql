use friendship;

SELECT users.first_name, users.last_name, friendships.friend_id, users2.first_name, users2.last_name FROM users JOIN friendships ON users.id = friendships.user_id JOIN users AS users2 ON friendships.friend_id = users2.id;

SELECT users.first_name FROM users JOIN friendships ON friendships.friend_id = users.id WHERE users.id = 4; (verificar)