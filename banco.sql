CREATE TABLE Musica (
    id_musica CHAR(2) PRIMARY KEY,
    nm_musica VARCHAR,
    clipe BYTEA,
    letra VARCHAR,
    idioma VARCHAR,
    fk_Artista_id_artista CHAR,
    fk_Genero_id_genero CHAR,
    fk_Album_id_album CHAR
);

CREATE TABLE Album (
    id_album CHAR PRIMARY KEY,
    nm_album VARCHAR,
    dt_criacao DATE,
    capa BYTEA,
    fk_Produtora_id_produtora CHAR,
    fk_Artista_id_artista CHAR
);

CREATE TABLE Artista (
    id_artista CHAR PRIMARY KEY,
    nm_artista VARCHAR,
    dt_nascimento DATE,
    foto BYTEA
);

CREATE TABLE Playlist (
    id_playlist CHAR PRIMARY KEY,
    nm_playlist VARCHAR,
    capa BYTEA,
    dt_criacao DATE,
    fk_Usuario_id_user CHAR
);

CREATE TABLE Usuario (
    id_user CHAR PRIMARY KEY,
    nm_user VARCHAR,
    dt_nascimento DATE,
    email VARCHAR,
    senha VARCHAR,
    telefone VARCHAR,
    foto BYTEA,
    is_admin BOOLEAN
);

CREATE TABLE Genero (
    id_genero CHAR PRIMARY KEY,
    nm_genero VARCHAR,
    descricao VARCHAR
);

CREATE TABLE Grupos (
    id_grupo CHAR PRIMARY KEY,
    nm_grupo VARCHAR,
    dt_criacao DATE
);

CREATE TABLE Produtora (
    id_produtora CHAR PRIMARY KEY,
    nm_produtora VARCHAR,
    foto BYTEA
);

CREATE TABLE Radio (
    id_radio CHAR PRIMARY KEY,
    nm_radio VARCHAR
);

CREATE TABLE Show (
    id_show CHAR PRIMARY KEY,
    video BYTEA,
    nm_show VARCHAR,
    dt_criacao DATE
);

CREATE TABLE User_musica (
    fk_Usuario_id_user CHAR,
    fk_Musica_id_musica CHAR
);

CREATE TABLE Radio_Musica (
    fk_Radio_id_radio CHAR,
    fk_Musica_id_musica CHAR
);

CREATE TABLE Show_Musica (
    fk_Musica_id_musica CHAR,
    fk_Show_id_show CHAR
);

CREATE TABLE Playlist_Musica (
    fk_Musica_id_musica CHAR,
    fk_Playlist_id_playlist CHAR
);

CREATE TABLE Grupos_Usuario (
    fk_Usuario_id_user CHAR,
    fk_Grupos_id_grupo CHAR
);

CREATE TABLE Show_Artista (
    fk_Show_id_show CHAR,
    fk_Artista_id_artista CHAR
);
 
ALTER TABLE Musica ADD CONSTRAINT FK_Musica_2
    FOREIGN KEY (fk_Artista_id_artista)
    REFERENCES Artista (id_artista)
    ON DELETE RESTRICT;
 
ALTER TABLE Musica ADD CONSTRAINT FK_Musica_3
    FOREIGN KEY (fk_Genero_id_genero)
    REFERENCES Genero (id_genero)
    ON DELETE RESTRICT;
 
ALTER TABLE Musica ADD CONSTRAINT FK_Musica_4
    FOREIGN KEY (fk_Album_id_album)
    REFERENCES Album (id_album)
    ON DELETE RESTRICT;
 
ALTER TABLE Album ADD CONSTRAINT FK_Album_2
    FOREIGN KEY (fk_Produtora_id_produtora)
    REFERENCES Produtora (id_produtora)
    ON DELETE RESTRICT;

ALTER TABLE Album ADD CONSTRAINT FK_Album_3
    FOREIGN KEY (fk_Artista_id_artista)
    REFERENCES Artista (id_artista)
    ON DELETE RESTRICT;
 
ALTER TABLE Playlist ADD CONSTRAINT FK_Playlist_2
    FOREIGN KEY (fk_Usuario_id_user)
    REFERENCES Usuario (id_user)
    ON DELETE RESTRICT;
 
ALTER TABLE User_musica ADD CONSTRAINT FK_User_musica_1
    FOREIGN KEY (fk_Usuario_id_user)
    REFERENCES Usuario (id_user)
    ON DELETE RESTRICT;
 
ALTER TABLE User_musica ADD CONSTRAINT FK_User_musica_2
    FOREIGN KEY (fk_Musica_id_musica)
    REFERENCES Musica (id_musica)
    ON DELETE RESTRICT;
 
ALTER TABLE Radio_Musica ADD CONSTRAINT FK_Radio_Musica_1
    FOREIGN KEY (fk_Radio_id_radio)
    REFERENCES Radio (id_radio)
    ON DELETE RESTRICT;
 
ALTER TABLE Radio_Musica ADD CONSTRAINT FK_Radio_Musica_2
    FOREIGN KEY (fk_Musica_id_musica)
    REFERENCES Musica (id_musica)
    ON DELETE RESTRICT;
 
ALTER TABLE Show_Musica ADD CONSTRAINT FK_Show_Musica_1
    FOREIGN KEY (fk_Musica_id_musica)
    REFERENCES Musica (id_musica)
    ON DELETE RESTRICT;
 
ALTER TABLE Show_Musica ADD CONSTRAINT FK_Show_Musica_2
    FOREIGN KEY (fk_Show_id_show)
    REFERENCES Show (id_show)
    ON DELETE RESTRICT;
 
ALTER TABLE Playlist_Musica ADD CONSTRAINT FK_Playlist_Musica_1
    FOREIGN KEY (fk_Musica_id_musica)
    REFERENCES Musica (id_musica)
    ON DELETE RESTRICT;
 
ALTER TABLE Playlist_Musica ADD CONSTRAINT FK_Playlist_Musica_2
    FOREIGN KEY (fk_Playlist_id_playlist)
    REFERENCES Playlist (id_playlist)
    ON DELETE RESTRICT;
 
ALTER TABLE Grupos_Usuario ADD CONSTRAINT FK_Grupos_Usuario_1
    FOREIGN KEY (fk_Usuario_id_user)
    REFERENCES Usuario (id_user)
    ON DELETE RESTRICT;
 
ALTER TABLE Grupos_Usuario ADD CONSTRAINT FK_Grupos_Usuario_2
    FOREIGN KEY (fk_Grupos_id_grupo)
    REFERENCES Grupos (id_grupo)
    ON DELETE RESTRICT;
 
ALTER TABLE Show_Artista ADD CONSTRAINT FK_Show_Artista_1
    FOREIGN KEY (fk_Show_id_show)
    REFERENCES Show (id_show)
    ON DELETE RESTRICT;
 
ALTER TABLE Show_Artista ADD CONSTRAINT FK_Show_Artista_2
    FOREIGN KEY (fk_Artista_id_artista)
    REFERENCES Artista (id_artista)
    ON DELETE RESTRICT;