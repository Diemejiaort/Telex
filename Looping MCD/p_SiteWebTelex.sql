CREATE DATABASE IF NOT EXISTS p_SiteWebTelex DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;

USE p_SiteWebTelex;

CREATE TABLE t_client(
   idClient INT AUTO_INCREMENT,
   Nom VARCHAR(55),
   Prenom VARCHAR(50),
   Age DATE,
   Adresse_mail VARCHAR(320),
   Mot_de_passe VARCHAR(255),
   Telephone VARCHAR(10),
   PRIMARY KEY(idClient)
);

CREATE TABLE t_Commande(
   idCommande INT AUTO_INCREMENT,
   Prix SMALLINT,
   Nb_facture BIGINT,
   Date_vente DATE,
   PRIMARY KEY(idCommande),
   UNIQUE(Nb_facture)
);

CREATE TABLE t_Adresse(
   idAdresse INT AUTO_INCREMENT,
   NPA VARCHAR(50),
   Localite VARCHAR(70),
   Rue VARCHAR(100),
   PRIMARY KEY(idAdresse)
);

CREATE TABLE t_Marque(
   idMarque INT AUTO_INCREMENT,
   Marque VARCHAR(15),
   Modele VARCHAR(30),
   PRIMARY KEY(idMarque)
);

CREATE TABLE t_Article(
   idArticle INT AUTO_INCREMENT,
   Numero_de_serie BIGINT,
   Prix SMALLINT,
   Description VARCHAR(500),
   Syteme_exploitation VARCHAR(35),
   Taille_ecran SMALLINT,
   Memoire_ROM SMALLINT,
   Autonomie SMALLINT,
   idMarque INT NOT NULL,
   PRIMARY KEY(idArticle),
   UNIQUE(Numero_de_serie),
   FOREIGN KEY(idMarque) REFERENCES t_Marque(idMarque)
);

CREATE TABLE peut_effectuer(
   idClient INT,
   idCommande INT,
   PRIMARY KEY(idClient, idCommande),
   FOREIGN KEY(idClient) REFERENCES t_client(idClient),
   FOREIGN KEY(idCommande) REFERENCES t_Commande(idCommande)
);

CREATE TABLE contenir(
   idCommande INT,
   idArticle INT,
   PRIMARY KEY(idCommande, idArticle),
   FOREIGN KEY(idCommande) REFERENCES t_Commande(idCommande),
   FOREIGN KEY(idArticle) REFERENCES t_Article(idArticle)
);

CREATE TABLE doit_avoir(
   idClient INT,
   idAdresse INT,
   PRIMARY KEY(idClient, idAdresse),
   FOREIGN KEY(idClient) REFERENCES t_client(idClient),
   FOREIGN KEY(idAdresse) REFERENCES t_Adresse(idAdresse)
);



