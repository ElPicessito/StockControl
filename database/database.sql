CREATE DATABASE Gestion_Flex_Stocks;
USE Gestion_Flex_Stocks;

CREATE TABLE Beneficiaire (
   ID_BENEFICIAIRE INT IDENTITY(1,1) PRIMARY KEY,
   Nom VARCHAR(50),
   Type_Beneficiaire VARCHAR(50),
   Adresse VARCHAR(50),
   Email VARCHAR(50),
   Tel VARCHAR(50)
);
GO

CREATE TABLE Produit (
   ID_Produit INT IDENTITY(1,1) PRIMARY KEY,
   Designation_Produit VARCHAR(50),
   Quantite_en_stock INT NOT NULL DEFAULT 0, 
   Division VARCHAR(50)
);
GO

CREATE TABLE Fournisseur (
   ID_Fournisseur INT IDENTITY(1,1) PRIMARY KEY,
   Nom VARCHAR(50),
   Type_Fournisseur VARCHAR(50),
   Adresse VARCHAR(50),
   Email VARCHAR(50),
   Tel VARCHAR(50)
);
GO

CREATE TABLE Users (
   ID_user INT IDENTITY(1,1) PRIMARY KEY,
   Username VARCHAR(50) NOT NULL,
   Password VARCHAR(50) NOT NULL,
   IsAdmin BIT NOT NULL DEFAULT 0,
   IsApproved BIT NOT NULL DEFAULT 0
);
GO

CREATE TABLE Bon_de_commande (
   ID_BDC INT IDENTITY(1,1) PRIMARY KEY,
   Date_Commande VARCHAR(50),
   ID_Fournisseur INT NULL, -- un fournisseur peut �tre supprim�
   CONSTRAINT FK_BonCommande_Fournisseur FOREIGN KEY (ID_Fournisseur)
      REFERENCES Fournisseur(ID_Fournisseur) ON DELETE SET NULL
);
GO

CREATE TABLE Bon_de_livraison (
   ID_BonDeLivraison INT IDENTITY(1,1) PRIMARY KEY,
   Date_Livraison VARCHAR(50),
   Prix_U MONEY,
   Prix_T MONEY,
   ID_BDC INT NOT NULL, -- lien vers la commande
   ID_Fournisseur INT NULL,
   CONSTRAINT FK_BonLivraison_Commande FOREIGN KEY (ID_BDC)
      REFERENCES Bon_de_commande(ID_BDC) ON DELETE CASCADE,
   CONSTRAINT FK_BonLivraison_Fournisseur FOREIGN KEY (ID_Fournisseur)
      REFERENCES Fournisseur(ID_Fournisseur) ON DELETE SET NULL
);
GO

CREATE TABLE Bon_de_sortie (
   ID_BonS INT IDENTITY(1,1) PRIMARY KEY,
   Date_sortie VARCHAR(50),
   ID_BENEFICIAIRE INT NOT NULL,
   CONSTRAINT FK_BonSortie_Beneficiaire FOREIGN KEY (ID_BENEFICIAIRE)
      REFERENCES Beneficiaire(ID_BENEFICIAIRE) ON DELETE CASCADE
);
GO

CREATE TABLE Bon_d_affectation (
   ID_BonAff INT IDENTITY(1,1) PRIMARY KEY,
   Date_affectation VARCHAR(50),
   ID_BENEFICIAIRE INT NOT NULL,
   CONSTRAINT FK_BonAffectation_Beneficiaire FOREIGN KEY (ID_BENEFICIAIRE)
      REFERENCES Beneficiaire(ID_BENEFICIAIRE) ON DELETE CASCADE
);
GO

CREATE TABLE Facture (
   ID_Facture INT IDENTITY(1,1) PRIMARY KEY,
   Date_Facture VARCHAR(50),
   Montant_Total VARCHAR(50),
   ID_BonDeLivraison INT NOT NULL,
   ID_Fournisseur INT NULL,
   CONSTRAINT FK_Facture_BonLivraison FOREIGN KEY (ID_BonDeLivraison)
      REFERENCES Bon_de_livraison(ID_BonDeLivraison) ON DELETE CASCADE,
   CONSTRAINT FK_Facture_Fournisseur FOREIGN KEY (ID_Fournisseur)
      REFERENCES Fournisseur(ID_Fournisseur) ON DELETE SET NULL
);
GO

CREATE TABLE apparaitre01 (
   ID_Produit INT,
   ID_BonDeLivraison INT,
   Qte_L VARCHAR(50),
   PRIMARY KEY(ID_Produit, ID_BonDeLivraison),
   CONSTRAINT FK_apparaitre01_Produit FOREIGN KEY(ID_Produit)
      REFERENCES Produit(ID_Produit) ON DELETE CASCADE,
   CONSTRAINT FK_apparaitre01_BonLivraison FOREIGN KEY(ID_BonDeLivraison)
      REFERENCES Bon_de_livraison(ID_BonDeLivraison) ON DELETE CASCADE
);
GO

CREATE TABLE apparaitre02 (
   ID_Produit INT,
   ID_BonS INT,
   Qte_S VARCHAR(50),
   PRIMARY KEY(ID_Produit, ID_BonS),
   CONSTRAINT FK_apparaitre02_Produit FOREIGN KEY(ID_Produit)
      REFERENCES Produit(ID_Produit) ON DELETE CASCADE,
   CONSTRAINT FK_apparaitre02_BonSortie FOREIGN KEY(ID_BonS)
      REFERENCES Bon_de_sortie(ID_BonS) ON DELETE CASCADE
);
GO

CREATE TABLE apparaitre03 (
   ID_Produit INT,
   ID_BonAff INT,
   Qte_AF VARCHAR(50),
   PRIMARY KEY(ID_Produit, ID_BonAff),
   CONSTRAINT FK_apparaitre03_Produit FOREIGN KEY(ID_Produit)
      REFERENCES Produit(ID_Produit) ON DELETE CASCADE,
   CONSTRAINT FK_apparaitre03_BonAffectation FOREIGN KEY(ID_BonAff)
      REFERENCES Bon_d_affectation(ID_BonAff) ON DELETE CASCADE
);
GO

CREATE TABLE apparaitre04 (
   ID_Produit INT,
   ID_BDC INT,
   Qte_E VARCHAR(50),
   PRIMARY KEY(ID_Produit, ID_BDC),
   CONSTRAINT FK_apparaitre04_Produit FOREIGN KEY(ID_Produit)
      REFERENCES Produit(ID_Produit) ON DELETE CASCADE,
   CONSTRAINT FK_apparaitre04_BonCommande FOREIGN KEY(ID_BDC)
      REFERENCES Bon_de_commande(ID_BDC) ON DELETE CASCADE
);
GO

-- apparaitre01 : livraison (INSERT -> +stock ; DELETE -> -stock)
CREATE TRIGGER trg_apparaitre01_after_insert
ON apparaitre01
AFTER INSERT
AS
BEGIN
  SET NOCOUNT ON;
  -- somme par produit des quantit�s ins�r�es
  ;WITH sums AS (
    SELECT ID_Produit, SUM(TRY_CAST(Qte_L AS INT)) AS AddQty
    FROM inserted
    GROUP BY ID_Produit
  )
  UPDATE p
  SET Quantite_en_stock = ISNULL(p.Quantite_en_stock, 0) + ISNULL(s.AddQty, 0)
  FROM Produit p
  JOIN sums s ON p.ID_Produit = s.ID_Produit;
END;
GO

CREATE TRIGGER trg_apparaitre01_after_delete
ON apparaitre01
AFTER DELETE
AS
BEGIN
  SET NOCOUNT ON;
  ;WITH sums AS (
    SELECT ID_Produit, SUM(TRY_CAST(Qte_L AS INT)) AS SubQty
    FROM deleted
    GROUP BY ID_Produit
  )
  UPDATE p
  SET Quantite_en_stock = ISNULL(p.Quantite_en_stock, 0) - ISNULL(s.SubQty, 0)
  FROM Produit p
  JOIN sums s ON p.ID_Produit = s.ID_Produit;
END;
GO

-- apparaitre02 : sortie (INSERT -> -stock ; DELETE -> +stock)
CREATE TRIGGER trg_apparaitre02_after_insert
ON apparaitre02
AFTER INSERT
AS
BEGIN
  SET NOCOUNT ON;
  ;WITH sums AS (
    SELECT ID_Produit, SUM(TRY_CAST(Qte_S AS INT)) AS SubQty
    FROM inserted
    GROUP BY ID_Produit
  )
  UPDATE p
  SET Quantite_en_stock = ISNULL(p.Quantite_en_stock, 0) - ISNULL(s.SubQty, 0)
  FROM Produit p
  JOIN sums s ON p.ID_Produit = s.ID_Produit;
END;
GO

CREATE TRIGGER trg_apparaitre02_after_delete
ON apparaitre02
AFTER DELETE
AS
BEGIN
  SET NOCOUNT ON;
  ;WITH sums AS (
    SELECT ID_Produit, SUM(TRY_CAST(Qte_S AS INT)) AS AddQty
    FROM deleted
    GROUP BY ID_Produit
  )
  UPDATE p
  SET Quantite_en_stock = ISNULL(p.Quantite_en_stock, 0) + ISNULL(s.AddQty, 0)
  FROM Produit p
  JOIN sums s ON p.ID_Produit = s.ID_Produit;
END;
GO

-- apparaitre03 : affectation (trait�e comme sortie)
CREATE TRIGGER trg_apparaitre03_after_insert
ON apparaitre03
AFTER INSERT
AS
BEGIN
  SET NOCOUNT ON;
  ;WITH sums AS (
    SELECT ID_Produit, SUM(TRY_CAST(Qte_AF AS INT)) AS SubQty
    FROM inserted
    GROUP BY ID_Produit
  )
  UPDATE p
  SET Quantite_en_stock = ISNULL(p.Quantite_en_stock, 0) - ISNULL(s.SubQty, 0)
  FROM Produit p
  JOIN sums s ON p.ID_Produit = s.ID_Produit;
END;
GO

CREATE TRIGGER trg_apparaitre03_after_delete
ON apparaitre03
AFTER DELETE
AS
BEGIN
  SET NOCOUNT ON;
  ;WITH sums AS (
    SELECT ID_Produit, SUM(TRY_CAST(Qte_AF AS INT)) AS AddQty
    FROM deleted
    GROUP BY ID_Produit
  )
  UPDATE p
  SET Quantite_en_stock = ISNULL(p.Quantite_en_stock, 0) + ISNULL(s.AddQty, 0)
  FROM Produit p
  JOIN sums s ON p.ID_Produit = s.ID_Produit;
END;
GO

-- apparaitre04 : commande (trait�e comme entr�e)
CREATE TRIGGER trg_apparaitre04_after_insert
ON apparaitre04
AFTER INSERT
AS
BEGIN
  SET NOCOUNT ON;
  ;WITH sums AS (
    SELECT ID_Produit, SUM(TRY_CAST(Qte_E AS INT)) AS AddQty
    FROM inserted
    GROUP BY ID_Produit
  )
  UPDATE p
  SET Quantite_en_stock = ISNULL(p.Quantite_en_stock, 0) + ISNULL(s.AddQty, 0)
  FROM Produit p
  JOIN sums s ON p.ID_Produit = s.ID_Produit;
END;
GO

CREATE TRIGGER trg_apparaitre04_after_delete
ON apparaitre04
AFTER DELETE
AS
BEGIN
  SET NOCOUNT ON;
  ;WITH sums AS (
    SELECT ID_Produit, SUM(TRY_CAST(Qte_E AS INT)) AS SubQty
    FROM deleted
    GROUP BY ID_Produit
  )
  UPDATE p
  SET Quantite_en_stock = ISNULL(p.Quantite_en_stock, 0) - ISNULL(s.SubQty, 0)
  FROM Produit p
  JOIN sums s ON p.ID_Produit = s.ID_Produit;
END;
GO

-- ==============================
-- AJOUT : VUES pour l'historique (Entr�es / Sorties)
-- ==============================
-- Vue Historique des Entr�es (Livraisons + Commandes)
CREATE VIEW Historique_Entrees AS
SELECT 
  bl.Date_Livraison AS DateOperation,
  p.ID_Produit,
  p.Designation_Produit,
  TRY_CAST(a.Qte_L AS INT) AS Quantite,
  'Livraison' AS TypeBon,
  a.ID_BonDeLivraison AS ID_Bon
FROM apparaitre01 a
JOIN Produit p ON a.ID_Produit = p.ID_Produit
JOIN Bon_de_livraison bl ON a.ID_BonDeLivraison = bl.ID_BonDeLivraison

UNION ALL

SELECT 
  bc.Date_Commande AS DateOperation,
  p.ID_Produit,
  p.Designation_Produit,
  TRY_CAST(a.Qte_E AS INT) AS Quantite,
  'Commande' AS TypeBon,
  a.ID_BDC AS ID_Bon
FROM apparaitre04 a
JOIN Produit p ON a.ID_Produit = p.ID_Produit
JOIN Bon_de_commande bc ON a.ID_BDC = bc.ID_BDC
;
GO

-- Vue Historique des Sorties (Sorties + Affectations)
CREATE VIEW Historique_Sorties AS
SELECT 
  bs.Date_sortie AS DateOperation,
  p.ID_Produit,
  p.Designation_Produit,
  TRY_CAST(a.Qte_S AS INT) AS Quantite,
  'Sortie' AS TypeBon,
  a.ID_BonS AS ID_Bon
FROM apparaitre02 a
JOIN Produit p ON a.ID_Produit = p.ID_Produit
JOIN Bon_de_sortie bs ON a.ID_BonS = bs.ID_BonS

UNION ALL

SELECT 
  ba.Date_affectation AS DateOperation,
  p.ID_Produit,
  p.Designation_Produit,
  TRY_CAST(a.Qte_AF AS INT) AS Quantite,
  'Affectation' AS TypeBon,
  a.ID_BonAff AS ID_Bon
FROM apparaitre03 a
JOIN Produit p ON a.ID_Produit = p.ID_Produit
JOIN Bon_d_affectation ba ON a.ID_BonAff = ba.ID_BonAff
;
GO
SELECT TOP 5 * FROM Historique_Entrees ORDER BY DateOperation DESC;


-- ----------------------------
-- BENEFICIAIRE
-- ----------------------------
INSERT INTO Beneficiaire (Nom, Type_Beneficiaire, Adresse, Email, Tel) VALUES
('Ahmed Benali', 'Employ�', 'Cit� 200 Logts, Nedroma', 'ahmed.benali@mail.dz', '0550123456'),
('Sara Boudiaf', '�tudiante', 'Rue Emir Abdelkader, Tlemcen', 'sara.boudiaf@mail.dz', '0550234567'),
('Karim Belkacem', 'M�decin', 'Bd Colonel Lotfi, Tlemcen', 'karim.belkacem@mail.dz', '0550345678'),
('Nadia Meziane', 'Enseignante', 'Cit� Mansourah, Tlemcen', 'nadia.meziane@mail.dz', '0550456789'),
('Yacine Touati', 'Technicien', 'Quartier El Hana, Nedroma', 'yacine.touati@mail.dz', '0550567890'),
('Lina Cheriet', 'Employ�e', 'Cit� 300 Logts, Nedroma', 'lina.cheriet@mail.dz', '0550678901'),
('Samir Aouali', 'Agent', 'Rue Abi Tammam, Tlemcen', 'samir.aouali@mail.dz', '0550789012'),
('Imane Bensalem', '�tudiante', 'Avenue Emir Abdelkader, Tlemcen', 'imane.bensalem@mail.dz', '0550890123'),
('Rachid Kaci', 'Comptable', 'Cit� Houari Boumediene, Nedroma', 'rachid.kaci@mail.dz', '0550901234'),
('Houda Ferhat', 'Infirmi�re', 'Cit� 500 Logts, Tlemcen', 'houda.ferhat@mail.dz', '0551012345');

-- ----------------------------
-- PRODUIT
-- ----------------------------
INSERT INTO Produit (Designation_Produit, Quantite_en_stock, Division) VALUES
('Ordinateur Dell OptiPlex', '50', 'Informatique'),
('Imprimante HP LaserJet', '30', 'Informatique'),
('Scanner Canon DR-C240', '15', 'Informatique'),
('Table de bureau', '100', 'Mobilier'),
('Chaise ergonomique', '200', 'Mobilier'),
('Armoire m�tallique', '60', 'Mobilier'),
('D�sinfectant 1L', '500', 'Hygi�ne'),
('Masques chirurgicaux', '1000', 'Hygi�ne'),
('Gants latex', '2000', 'Hygi�ne'),
('Climatisation LG 18000BTU', '25', '�quipements');

-- ----------------------------
-- FOURNISSEUR
-- ----------------------------
INSERT INTO Fournisseur (Nom, Type_Fournisseur, Adresse, Email, Tel) VALUES
('TechnoDZ', 'Informatique', 'Zone industrielle Tlemcen', 'contact@technodz.dz', '043123111'),
('OfficeEquip', 'Mobilier', 'Rue Abane Ramdane, Oran', 'office@equip.dz', '041654222'),
('HygiePlus', 'Hygi�ne', 'Zone industrielle Sidi Bel Abb�s', 'contact@hygieplus.dz', '048369333'),
('ElectroService', '�lectrom�nager', 'Avenue Didouche Mourad, Alger', 'info@electro.dz', '021147444'),
('BureauMarket', 'Mobilier', 'Rue Larbi Ben M�hidi, Tlemcen', 'vente@bureaumarket.dz', '043258555'),
('IT Solutions', 'Informatique', 'Zone industrielle Es S�nia, Oran', 'its@dz.com', '041369666'),
('CleanMed', 'Hygi�ne', 'Rue Emir Abdelkader, Mostaganem', 'clean@dz.com', '045753777'),
('CoolAir', 'Climatisation', 'Zone industrielle Relizane', 'clim@dz.com', '046951888'),
('Papeterie Centrale', 'Fournitures', 'Rue Colonel Amirouche, Tlemcen', 'papeterie@dz.com', '043753999'),
('LogiStock', 'Logistique', 'Bd Houari Boumediene, Alger', 'logi@stock.dz', '021369000');

-- ----------------------------
-- BON DE COMMANDE
-- ----------------------------
INSERT INTO Bon_de_commande (Date_Commande, ID_Fournisseur) VALUES
('2025-09-01', 1),
('2025-09-02', 2),
('2025-09-03', 3),
('2025-09-04', 4),
('2025-09-05', 5),
('2025-09-06', 6),
('2025-09-07', 7),
('2025-09-08', 8),
('2025-09-09', 9),
('2025-09-10', 10);

-- ----------------------------
-- BON DE LIVRAISON
-- ----------------------------
INSERT INTO Bon_de_livraison (Date_Livraison, Prix_U, Prix_T, ID_BDC, ID_Fournisseur) VALUES
('2025-09-02', 100, 1000, 1, 1),
('2025-09-03', 200, 2000, 2, 2),
('2025-09-04', 150, 1500, 3, 3),
('2025-09-05', 120, 1200, 4, 4),
('2025-09-06', 300, 3000, 5, 5),
('2025-09-07', 80, 800, 6, 6),
('2025-09-08', 50, 500, 7, 7),
('2025-09-09', 70, 700, 8, 8),
('2025-09-10', 90, 900, 9, 9),
('2025-09-11', 110, 1100, 10, 10);

-- ----------------------------
-- BON DE SORTIE
-- ----------------------------
INSERT INTO Bon_de_sortie (Date_sortie, ID_BENEFICIAIRE) VALUES
('2025-09-05', 1),
('2025-09-06', 2),
('2025-09-07', 3),
('2025-09-08', 4),
('2025-09-09', 5),
('2025-09-10', 6),
('2025-09-11', 7),
('2025-09-12', 8),
('2025-09-13', 9),
('2025-09-14', 10);

-- ----------------------------
-- BON D'AFFECTATION
-- ----------------------------
INSERT INTO Bon_d_affectation (Date_affectation, ID_BENEFICIAIRE) VALUES
('2025-09-15', 1),
('2025-09-16', 2),
('2025-09-17', 3),
('2025-09-18', 4),
('2025-09-19', 5),
('2025-09-20', 6),
('2025-09-21', 7),
('2025-09-22', 8),
('2025-09-23', 9),
('2025-09-24', 10);

-- ----------------------------
-- FACTURE
-- ----------------------------
INSERT INTO Facture (Date_Facture, Montant_Total, ID_BonDeLivraison, ID_Fournisseur) VALUES
('2025-09-06', '1000', 1, 1),
('2025-09-07', '2000', 2, 2),
('2025-09-08', '1500', 3, 3),
('2025-09-09', '1200', 4, 4),
('2025-09-10', '3000', 5, 5),
('2025-09-11', '800', 6, 6),
('2025-09-12', '500', 7, 7),
('2025-09-13', '700', 8, 8),
('2025-09-14', '900', 9, 9),
('2025-09-15', '1100', 10, 10);

-- ----------------------------
-- Apparaitre01 (Livraisons)  : (ID_Produit, ID_BonDeLivraison, Qte_L)
-- ----------------------------
INSERT INTO apparaitre01 (ID_Produit, ID_BonDeLivraison, Qte_L) VALUES
(1, 1, '10'),
(2, 2, '20'),
(3, 3, '5'),
(4, 4, '7'),
(5, 5, '8'),
(6, 6, '3'),
(7, 7, '6'),
(8, 8, '2'),
(9, 9, '4'),
(10,10, '1');

-- ----------------------------
-- Apparaitre02 (Sorties) : (ID_Produit, ID_BonS, Qte_S)
-- ----------------------------
INSERT INTO apparaitre02 (ID_Produit, ID_BonS, Qte_S) VALUES
(1, 1, '2'),
(2, 2, '5'),
(3, 3, '1'),
(4, 4, '3'),
(5, 5, '4'),
(6, 6, '2'),
(7, 7, '1'),
(8, 8, '1'),
(9, 9, '2'),
(10,10,'1');

-- ----------------------------
-- Apparaitre03 (Affectations) : (ID_Produit, ID_BonAff, Qte_AF)
-- ----------------------------
INSERT INTO apparaitre03 (ID_Produit, ID_BonAff, Qte_AF) VALUES
(1, 1, '1'),
(2, 2, '2'),
(3, 3, '1'),
(4, 4, '1'),
(5, 5, '3'),
(6, 6, '1'),
(7, 7, '2'),
(8, 8, '1'),
(9, 9, '1'),
(10,10,'2');

-- ----------------------------
-- Apparaitre04 (Commandes / D�tails de commande) : (ID_Produit, ID_BDC, Qte_E)
-- ----------------------------
INSERT INTO apparaitre04 (ID_Produit, ID_BDC, Qte_E) VALUES
(1, 1, '5'),
(2, 2, '10'),
(3, 3, '2'),
(4, 4, '3'),
(5, 5, '4'),
(6, 6, '2'),
(7, 7, '3'),
(8, 8, '1'),
(9, 9, '2'),
(10,10,'1');
