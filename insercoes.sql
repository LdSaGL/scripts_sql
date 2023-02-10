INSERT INTO produtora (id_produtora, nm_produtora, foto)
VALUES (1, 'sony', NULL),
       (2, '30praum', NULL),
       (3, 'universal', NULL),
	   (4, 'globo', NULL),
	   (5, 'disney', NULL);

INSERT INTO artista (id_artista, nm_artista, dt_nascimento, foto)
VALUES (1, 'harry styles', '01-02-1994'::date, NULL),
       (2, 'matue', '11-10-1993'::date, NULL),
       (3, 'imagine dragons', '14-07-1987'::date, NULL),
	   (4, 'the weeknd', '16-02-1990'::date, NULL),
	   (5, 'shakira', '02-02-1977'::date, NULL);

INSERT INTO album (id_album, nm_album, dt_criacao, capa, fk_produtora_id_produtora)
VALUES (1, 'maquina do tempo', '10-09-2020'::date, NULL, 2),
       (2, 'evolve', '23-06-2017'::date, NULL, 3),
       (3, 'after hours', '20-03-2020'::date, NULL, 1),
	   (4, 'world cup', '21-03-2014'::date, NULL, 1),
	   (5, 'fine line', '13-12-2019'::date, NULL, 4);	   

INSERT INTO grupos (id_grupo, nm_grupo, dt_criacao)
VALUES (1, 'licio', '30-01-2022'::date),
       (2, 'cardoso', '09-11-2021'::date),
       (3, 'brazil', '27-05-2021'::date),
	   (4, 'amantes do trap', '10-09-2022'::date),
	   (5, 'unb', '01-02-2023'::date);

INSERT INTO genero (id_genero, nm_genero, descricao)
VALUES (1, 'pop', NULL),
       (2, 'trap', NULL),
       (3, 'eletronica', NULL),
	   (4, 'indie', NULL),
	   (5, 'r&b', NULL);

INSERT INTO radio (id_radio, nm_radio)
VALUES (1, 'mix'),
       (2, 'joven pan'),
       (3, 'clube fm'),
	   (4, 'verde oliva'),
	   (5, 'nova brasil');
	   
INSERT INTO usuario (id_user, nm_user, dt_nascimento, email, senha, telefone, foto, is_admin)
VALUES (1, 'pedro', '30-01-2022'::date, 'pedro@gmail.com', '0000', '985461205', NULL, FALSE),
       (2, 'lucas', '09-11-2021'::date, 'lucas@gmail.com', '1111', '996563321', NULL, FALSE),
       (3, 'arthur', '27-05-2021'::date, 'arthur@gmail.com', '2222', '987642352', NULL, FALSE),
	   (4, 'eduardo', '10-09-2022'::date, 'eduardo@gmail.com', '1234', '996315456', NULL, TRUE),
	   (5, 'maristela', '01-02-2023'::date, 'maristela@gmail.com', '4321', '986654631', NULL, TRUE);
	   
INSERT INTO "show" (id_show, video, nm_show, dt_criacao)
VALUES (1, NULL, 'lollapalooza', '20-06-1991'::date),
	   (2, NULL, 'rock in  rio', '07-08-1985'::date),
	   (3, NULL, 'na praia', '27-01-2013'::date),
	   (4, NULL, 'tomorrowland', '21-07-2015'::date),
	   (5, NULL, 'primavera summit', '29-10-2001'::date);
	   
INSERT INTO playlist (id_playlist, nm_playlist, capa, dt_criacao, fk_usuario_id_user)
VALUES (1, 'academia', NULL, '05-01-2023'::date, 2),
	   (2, 'top 50 br', NULL, '13-01-2023'::date, 2),
	   (3, 'favoritas', NULL, '17-01-2023'::date, 3),
	   (4, 'estudos', NULL, '21-01-2023'::date, 1),
	   (5, 'dormir', NULL, '26-01-2023'::date, 3);
	   
INSERT INTO musica (id_musica, nm_musica, clipe, letra, idioma, fk_artista_id_artista, fk_genero_id_genero, fk_album_id_album)
VALUES (1, 'watermelon sugar', NULL, NULL, 'ingles', 1, 1, 3),
	   (2, 'as it was', NULL, NULL, 'ingles', 1, 4, 3),
	   (3, 'waka waka', NULL, NULL, 'espanhol', 5, 5, 4),
	   (4, 'lalala', NULL, NULL, 'espanhol', 5, 1, 4),
	   (5, 'blinding lights', NULL, NULL, 'ingles',4, 3, 5),
	   (6, 'die for you', NULL, NULL, 'ingles', 4, 2, 5),
	   (7, 'kenny g', NULL, NULL, 'portugues', 2, 2, 1),
	   (8, 'quer voar', NULL, NULL, 'portugues', 2, 2, 1),
	   (9, 'radioactive', NULL, NULL, 'ingles', 3, 3, 2),
	   (10, 'believer', NULL, NULL, 'ingles', 3, 5, 2);