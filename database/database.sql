CREATE TABLE Users (
   ID_user INT IDENTITY(1,1) PRIMARY KEY,
   Username NVARCHAR(50) NOT NULL,
   Password VARCHAR(64) NOT NULL,
   IsAdmin BIT NOT NULL DEFAULT 0,
   IsApproved BIT NOT NULL DEFAULT 0
);
GO

CREATE TABLE Beneficiaire (
   ID_BENEFICIAIRE INT IDENTITY(1,1) PRIMARY KEY,
   Nom NVARCHAR(100),
   Type_Beneficiaire NVARCHAR(100),
   Adresse NVARCHAR(200),
   Email NVARCHAR(100),
   Tel NVARCHAR(50)
);
GO

CREATE TABLE Produit (
   ID_Produit INT IDENTITY(1,1) PRIMARY KEY,
   Designation_Produit NVARCHAR(200),
   Quantite_en_stock INT NOT NULL DEFAULT 0, 
   Division NVARCHAR(100)
);
GO

CREATE TABLE Fournisseur (
   ID_Fournisseur INT IDENTITY(1,1) PRIMARY KEY,
   Nom NVARCHAR(100),
   Type_Fournisseur NVARCHAR(100),
   Adresse NVARCHAR(200),
   Email NVARCHAR(100),
   Tel NVARCHAR(50)
);
GO

CREATE TABLE Bon_de_commande (
   ID_BDC INT IDENTITY(1,1) PRIMARY KEY,
   Date_Commande NVARCHAR(50),
   ID_Fournisseur INT NULL,
   CONSTRAINT FK_BonCommande_Fournisseur FOREIGN KEY (ID_Fournisseur)
      REFERENCES Fournisseur(ID_Fournisseur) ON DELETE SET NULL
);
GO

CREATE TABLE Bon_de_livraison (
   ID_BonDeLivraison INT IDENTITY(1,1) PRIMARY KEY,
   Date_Livraison NVARCHAR(50),
   Prix_U MONEY,
   Prix_T MONEY,
   ID_BDC INT NOT NULL,
   ID_Fournisseur INT NULL,
   CONSTRAINT FK_BonLivraison_Commande FOREIGN KEY (ID_BDC)
      REFERENCES Bon_de_commande(ID_BDC) ON DELETE CASCADE,
   CONSTRAINT FK_BonLivraison_Fournisseur FOREIGN KEY (ID_Fournisseur)
      REFERENCES Fournisseur(ID_Fournisseur) ON DELETE SET NULL
);
GO

CREATE TABLE Bon_de_sortie (
   ID_BonS INT IDENTITY(1,1) PRIMARY KEY,
   Date_sortie NVARCHAR(50),
   ID_BENEFICIAIRE INT NOT NULL,
   CONSTRAINT FK_BonSortie_Beneficiaire FOREIGN KEY (ID_BENEFICIAIRE)
      REFERENCES Beneficiaire(ID_BENEFICIAIRE) ON DELETE CASCADE
);
GO

CREATE TABLE Bon_d_affectation (
   ID_BonAff INT IDENTITY(1,1) PRIMARY KEY,
   Date_affectation NVARCHAR(50),
   ID_BENEFICIAIRE INT NOT NULL,
   CONSTRAINT FK_BonAffectation_Beneficiaire FOREIGN KEY (ID_BENEFICIAIRE)
      REFERENCES Beneficiaire(ID_BENEFICIAIRE) ON DELETE CASCADE
);
GO

CREATE TABLE Facture (
   ID_Facture INT IDENTITY(1,1) PRIMARY KEY,
   Date_Facture NVARCHAR(50),
   Montant_Total NVARCHAR(50),
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
   Qte_L NVARCHAR(50),
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
   Qte_S NVARCHAR(50),
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
   Qte_AF NVARCHAR(50),
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
   Qte_E NVARCHAR(50),
   PRIMARY KEY(ID_Produit, ID_BDC),
   CONSTRAINT FK_apparaitre04_Produit FOREIGN KEY(ID_Produit)
      REFERENCES Produit(ID_Produit) ON DELETE CASCADE,
   CONSTRAINT FK_apparaitre04_BonCommande FOREIGN KEY(ID_BDC)
      REFERENCES Bon_de_commande(ID_BDC) ON DELETE CASCADE
);
GO