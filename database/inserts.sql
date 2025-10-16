INSERT INTO Beneficiaire (Nom, Type_Beneficiaire, Adresse, Email, Tel) VALUES
('Ahmed Benali', 'Employé', 'Cité 200 Logts, Nedroma', 'ahmed.benali@mail.dz', '0550123456'),
('Sara Boudiaf', 'Étudiante', 'Rue Emir Abdelkader, Tlemcen', 'sara.boudiaf@mail.dz', '0550234567'),
('Karim Belkacem', 'Médecin', 'Bd Colonel Lotfi, Tlemcen', 'karim.belkacem@mail.dz', '0550345678'),
('Nadia Meziane', 'Enseignante', 'Cité Mansourah, Tlemcen', 'nadia.meziane@mail.dz', '0550456789'),
('Yacine Touati', 'Technicien', 'Quartier El Hana, Nedroma', 'yacine.touati@mail.dz', '0550567890'),
('Lina Cheriet', 'Employée', 'Cité 300 Logts, Nedroma', 'lina.cheriet@mail.dz', '0550678901'),
('Samir Aouali', 'Agent', 'Rue Abi Tammam, Tlemcen', 'samir.aouali@mail.dz', '0550789012'),
('Imane Bensalem', 'Étudiante', 'Avenue Emir Abdelkader, Tlemcen', 'imane.bensalem@mail.dz', '0550890123'),
('Rachid Kaci', 'Comptable', 'Cité Houari Boumediene, Nedroma', 'rachid.kaci@mail.dz', '0550901234'),
('Houda Ferhat', 'Infirmière', 'Cité 500 Logts, Tlemcen', 'houda.ferhat@mail.dz', '0551012345');
GO

INSERT INTO Produit (Designation_Produit, Quantite_en_stock, Division) VALUES
('Ordinateur Dell OptiPlex', '50', 'Informatique'),
('Imprimante HP LaserJet', '30', 'Informatique'),
('Scanner Canon DR-C240', '15', 'Informatique'),
('Table de bureau', '100', 'Mobilier'),
('Chaise ergonomique', '200', 'Mobilier'),
('Armoire métallique', '60', 'Mobilier'),
('Désinfectant 1L', '500', 'Hygiène'),
('Masques chirurgicaux', '1000', 'Hygiène'),
('Gants latex', '2000', 'Hygiène'),
('Climatisation LG 18000BTU', '25', 'Équipements');
GO

INSERT INTO Fournisseur (Nom, Type_Fournisseur, Adresse, Email, Tel) VALUES
('TechnoDZ', 'Informatique', 'Zone industrielle Tlemcen', 'contact@technodz.dz', '043123111'),
('OfficeEquip', 'Mobilier', 'Rue Abane Ramdane, Oran', 'office@equip.dz', '041654222'),
('HygiePlus', 'Hygiène', 'Zone industrielle Sidi Bel Abbès', 'contact@hygieplus.dz', '048369333'),
('ElectroService', 'Électroménager', 'Avenue Didouche Mourad, Alger', 'info@electro.dz', '021147444'),
('BureauMarket', 'Mobilier', 'Rue Larbi Ben Méhidi, Tlemcen', 'vente@bureaumarket.dz', '043258555'),
('IT Solutions', 'Informatique', 'Zone industrielle Es Sénia, Oran', 'its@dz.com', '041369666'),
('CleanMed', 'Hygiène', 'Rue Emir Abdelkader, Mostaganem', 'clean@dz.com', '045753777'),
('CoolAir', 'Climatisation', 'Zone industrielle Relizane', 'clim@dz.com', '046951888'),
('Papeterie Centrale', 'Fournitures', 'Rue Colonel Amirouche, Tlemcen', 'papeterie@dz.com', '043753999'),
('LogiStock', 'Logistique', 'Bd Houari Boumediene, Alger', 'logi@stock.dz', '021369000');
GO

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
GO

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
GO

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
GO

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
GO

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
GO

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
GO

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
GO

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
GO

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
GO

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
GO

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
GO