-- 1. Seleziona tutti gli utenti e calcolane l'età (25)

SELECT username, birthdate, 
TIMESTAMPDIFF(YEAR,birthdate,CURDATE()) AS età
FROM `users`;


-- 2. Seleziona tutti i post senza Like (13)

SELECT *
FROM `likes`
JOIN `posts`ON `likes`.`post_id`= `posts`.`id`
WHERE `likes`.`post_id`IS NULL;


-- 3. Conta il numero di like per ogni post (165)

SELECT *
FROM `likes`
JOIN `posts`ON `likes`.`post_id`= `posts`.`id`;


-- 4. Ordina gli utenti per il numero di media caricati (25)
SELECT COUNT(`medias`.`id`) AS media, users.username
FROM `media_post`
JOIN `medias`ON `media_post`.`media_id`= `medias`.`id`
JOIN `users`ON `medias`. `user_id`= `users`.`id`
GROUP BY `users`.`id`;


-- 5. Ordina gli utenti per totale di likes ricevuti nei loro posts (25)

SELECT COUNT(posts.id) AS  likes_with_posts
FROM likes
JOIN  users ON likes. user_id = users.id
JOIN posts ON likes. post_id = posts.id
GROUP BY users.id;


-- 6. Seleziona tutti i post degli utenti tra i 20 e i 30 anni (49)

SELECT users.username, users.birthdate
FROM posts
JOIN users ON posts. user_id = users.id
WHERE TIMESTAMPDIFF(YEAR, users.birthdate, CURDATE()) BETWEEN 20 AND 30;




-- 7. Seleziona il numero di post e di media per ogni utente
SELECT * 
FROM media_post
JOIN posts ON media_post. post_id = posts.id
JOIN medias ON media_post.media_id = medias.id
JOIN users ON medias. user_id= users.id




