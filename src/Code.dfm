object DataModule2: TDataModule2
  Height = 621
  Width = 546
  object ADO: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=Gestion_Flex_Stocks;Data Source=ACER\SQ' +
      'LEXPRESS'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 32
    Top = 24
  end
  object Users: TADOQuery
    Active = True
    Connection = ADO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Users')
    Left = 32
    Top = 88
  end
  object Beneficiaire: TADOQuery
    Active = True
    Connection = ADO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from beneficiaire')
    Left = 32
    Top = 152
    object BeneficiaireID_BENEFICIAIRE: TAutoIncField
      FieldName = 'ID_BENEFICIAIRE'
      ReadOnly = True
    end
    object BeneficiaireNom: TStringField
      FieldName = 'Nom'
      Size = 50
    end
    object BeneficiaireType_Beneficiaire: TStringField
      FieldName = 'Type_Beneficiaire'
      Size = 50
    end
    object BeneficiaireAdresse: TStringField
      FieldName = 'Adresse'
      Size = 50
    end
    object BeneficiaireEmail: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object BeneficiaireTel: TStringField
      FieldName = 'Tel'
      Size = 50
    end
  end
  object Fournisseur: TADOQuery
    Active = True
    Connection = ADO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from fournisseur')
    Left = 32
    Top = 216
    object FournisseurID_Fournisseur: TAutoIncField
      FieldName = 'ID_Fournisseur'
      ReadOnly = True
    end
    object FournisseurNom: TStringField
      FieldName = 'Nom'
      Size = 50
    end
    object FournisseurType_Fournisseur: TStringField
      FieldName = 'Type_Fournisseur'
      Size = 50
    end
    object FournisseurAdresse: TStringField
      FieldName = 'Adresse'
      Size = 50
    end
    object FournisseurEmail: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object FournisseurTel: TStringField
      FieldName = 'Tel'
      Size = 50
    end
  end
  object Facture: TADOQuery
    Active = True
    Connection = ADO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Facture')
    Left = 32
    Top = 344
  end
  object BonSortie: TADOQuery
    Active = True
    Connection = ADO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Bon_de_sortie')
    Left = 32
    Top = 408
    object BonSortieID_BonS: TAutoIncField
      FieldName = 'ID_BonS'
      ReadOnly = True
    end
    object BonSortieDate_sortie: TStringField
      FieldName = 'Date_sortie'
      Size = 50
    end
    object BonSortieID_BENEFICIAIRE: TIntegerField
      FieldName = 'ID_BENEFICIAIRE'
    end
  end
  object BonAffectation: TADOQuery
    Active = True
    Connection = ADO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Bon_d_affectation')
    Left = 32
    Top = 472
    object BonAffectationID_BonAff: TAutoIncField
      FieldName = 'ID_BonAff'
      ReadOnly = True
    end
    object BonAffectationDate_affectation: TStringField
      FieldName = 'Date_affectation'
      Size = 50
    end
    object BonAffectationID_BENEFICIAIRE: TIntegerField
      FieldName = 'ID_BENEFICIAIRE'
    end
  end
  object BonLivraison: TADOQuery
    Active = True
    Connection = ADO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Bon_de_livraison')
    Left = 192
    Top = 88
    object BonLivraisonID_BonDeLivraison: TAutoIncField
      FieldName = 'ID_BonDeLivraison'
      ReadOnly = True
    end
    object BonLivraisonDate_Livraison: TStringField
      FieldName = 'Date_Livraison'
      Size = 50
    end
    object BonLivraisonPrix_U: TBCDField
      FieldName = 'Prix_U'
      Precision = 19
    end
    object BonLivraisonPrix_T: TBCDField
      FieldName = 'Prix_T'
      Precision = 19
    end
    object BonLivraisonID_BDC: TIntegerField
      FieldName = 'ID_BDC'
    end
    object BonLivraisonID_Fournisseur: TIntegerField
      FieldName = 'ID_Fournisseur'
    end
  end
  object BonCommande: TADOQuery
    Active = True
    Connection = ADO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Bon_de_commande')
    Left = 192
    Top = 152
    object BonCommandeID_BDC: TAutoIncField
      FieldName = 'ID_BDC'
      ReadOnly = True
    end
    object BonCommandeDate_Commande: TStringField
      FieldName = 'Date_Commande'
      Size = 50
    end
    object BonCommandeID_Fournisseur: TIntegerField
      FieldName = 'ID_Fournisseur'
    end
  end
  object App1: TADOQuery
    Active = True
    Connection = ADO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from apparaitre01')
    Left = 192
    Top = 216
  end
  object App2: TADOQuery
    Active = True
    Connection = ADO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from apparaitre02')
    Left = 192
    Top = 280
  end
  object App3: TADOQuery
    Active = True
    Connection = ADO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from apparaitre03')
    Left = 192
    Top = 344
  end
  object App4: TADOQuery
    Active = True
    Connection = ADO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from apparaitre04')
    Left = 192
    Top = 408
  end
  object DataSource1: TDataSource
    DataSet = Users
    Left = 112
    Top = 88
  end
  object DataSource2: TDataSource
    DataSet = Beneficiaire
    Left = 112
    Top = 152
  end
  object DataSource3: TDataSource
    DataSet = Fournisseur
    Left = 112
    Top = 216
  end
  object DataSource4: TDataSource
    DataSet = Facture
    Left = 112
    Top = 344
  end
  object DataSource5: TDataSource
    DataSet = Produit
    Left = 112
    Top = 280
  end
  object DataSource6: TDataSource
    DataSet = BonSortie
    Left = 112
    Top = 408
  end
  object DataSource7: TDataSource
    DataSet = BonAffectation
    Left = 112
    Top = 472
  end
  object DataSource8: TDataSource
    DataSet = BonLivraison
    Left = 272
    Top = 88
  end
  object DataSource9: TDataSource
    DataSet = BonCommande
    Left = 272
    Top = 152
  end
  object DataSource10: TDataSource
    DataSet = App1
    Left = 272
    Top = 216
  end
  object DataSource11: TDataSource
    DataSet = App2
    Left = 272
    Top = 280
  end
  object DataSource12: TDataSource
    DataSet = App3
    Left = 272
    Top = 344
  end
  object DataSource13: TDataSource
    DataSet = App4
    Left = 272
    Top = 408
  end
  object Entrees: TADOQuery
    Active = True
    Connection = ADO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT '
      '    bl.Date_Livraison AS DateEntree,'
      '    p.Designation_Produit,'
      '    a1.Qte_L AS Quantite,'
      '    f.Nom AS Fournisseur'
      'FROM apparaitre01 a1'
      'JOIN Produit p ON p.ID_Produit = a1.ID_Produit'
      
        'JOIN Bon_de_livraison bl ON bl.ID_BonDeLivraison = a1.ID_BonDeLi' +
        'vraison'
      'LEFT JOIN Fournisseur f ON f.ID_Fournisseur = bl.ID_Fournisseur'
      'ORDER BY bl.Date_Livraison DESC;')
    Left = 192
    Top = 472
  end
  object DataSource14: TDataSource
    DataSet = Entrees
    Left = 272
    Top = 472
  end
  object Sorties: TADOQuery
    Active = True
    Connection = ADO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT '
      '    bs.Date_sortie AS DateSortie,'
      '    p.Designation_Produit,'
      '    a2.Qte_S AS Quantite,'
      '    b.Nom AS Beneficiaire'
      'FROM apparaitre02 a2'
      'JOIN Produit p ON p.ID_Produit = a2.ID_Produit'
      'JOIN Bon_de_sortie bs ON bs.ID_BonS = a2.ID_BonS'
      
        'LEFT JOIN Beneficiaire b ON b.ID_BENEFICIAIRE = bs.ID_BENEFICIAI' +
        'RE'
      'ORDER BY bs.Date_sortie DESC;')
    Left = 32
    Top = 544
  end
  object DataSource15: TDataSource
    DataSet = Sorties
    Left = 112
    Top = 544
  end
  object ProduitTotal: TADOQuery
    Active = True
    Connection = ADO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT COUNT(*) AS TotalProduits FROM Produit;')
    Left = 352
    Top = 88
  end
  object ProduitFaible: TADOQuery
    Connection = ADO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT COUNT(*) AS StockFaible '
      'FROM Produit '
      'WHERE Quantite_en_stock <= 10 AND Quantite_en_stock > 3;')
    Left = 352
    Top = 152
  end
  object ProduitCritique: TADOQuery
    Connection = ADO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT COUNT(*) AS ProduitsCritiques '
      'FROM Produit '
      'WHERE Quantite_en_stock <= 3 AND Quantite_en_stock > 0;')
    Left = 352
    Top = 216
  end
  object ProduitRupture: TADOQuery
    Connection = ADO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT COUNT(*) AS RuptureStock '
      'FROM Produit '
      'WHERE Quantite_en_stock = 0;')
    Left = 352
    Top = 280
  end
  object DataSource16: TDataSource
    DataSet = ProduitTotal
    Left = 432
    Top = 88
  end
  object DataSource17: TDataSource
    DataSet = ProduitFaible
    Left = 432
    Top = 152
  end
  object DataSource18: TDataSource
    DataSet = ProduitCritique
    Left = 432
    Top = 216
  end
  object DataSource19: TDataSource
    DataSet = ProduitRupture
    Left = 432
    Top = 280
  end
  object Produit: TADOQuery
    Active = True
    Connection = ADO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Produit')
    Left = 32
    Top = 280
    object ProduitID_Produit: TAutoIncField
      FieldName = 'ID_Produit'
      ReadOnly = True
    end
    object ProduitDesignation_Produit: TStringField
      FieldName = 'Designation_Produit'
      Size = 50
    end
    object ProduitQuantite_en_stock: TIntegerField
      FieldName = 'Quantite_en_stock'
    end
    object ProduitDivision: TStringField
      FieldName = 'Division'
      Size = 50
    end
  end
end
