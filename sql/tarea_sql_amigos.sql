-- escribe una consulta SQL que devuelva una lista de usuarios junto con los nombres de sus amigos.
select * from friendships;
select * from users;
SELECT users.first_name,users.last_name,user2.first_name, user2.last_name  FROM users 
LEFT JOIN friendships ON friendships.user_id = users.id
LEFT JOIN users as user2 ON user2.id = friendships.friend_id
-- Devuelva a todos los usuarios que son amigos de Kermit, asegúrese de que sus nombres se muestren en los resultados.


