CREATE TRIGGER trg_apparaitre01_after_insert
ON apparaitre01
AFTER INSERT
AS
BEGIN
  SET NOCOUNT ON;
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

CREATE VIEW Historique_Entrees AS
SELECT 
  bl.Date_Livraison AS DateOperation,
  p.ID_Produit,
  p.Designation_Produit,
  TRY_CAST(a.Qte_L AS INT) AS Quantite,
  N'Livraison' AS TypeBon,
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
  N'Commande' AS TypeBon,
  a.ID_BDC AS ID_Bon
FROM apparaitre04 a
JOIN Produit p ON a.ID_Produit = p.ID_Produit
JOIN Bon_de_commande bc ON a.ID_BDC = bc.ID_BDC
;
GO

CREATE VIEW Historique_Sorties AS
SELECT 
  bs.Date_sortie AS DateOperation,
  p.ID_Produit,
  p.Designation_Produit,
  TRY_CAST(a.Qte_S AS INT) AS Quantite,
  N'Sortie' AS TypeBon,
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
  N'Affectation' AS TypeBon,
  a.ID_BonAff AS ID_Bon
FROM apparaitre03 a
JOIN Produit p ON a.ID_Produit = p.ID_Produit
JOIN Bon_d_affectation ba ON a.ID_BonAff = ba.ID_BonAff
;
GO
