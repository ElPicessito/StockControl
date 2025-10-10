unit Code;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModule2 = class(TDataModule)
    ADO: TADOConnection;
    Users: TADOQuery;
    Beneficiaire: TADOQuery;
    Fournisseur: TADOQuery;
    Facture: TADOQuery;
    BonSortie: TADOQuery;
    BonAffectation: TADOQuery;
    BonLivraison: TADOQuery;
    BonCommande: TADOQuery;
    App1: TADOQuery;
    App2: TADOQuery;
    App3: TADOQuery;
    App4: TADOQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    DataSource6: TDataSource;
    DataSource7: TDataSource;
    DataSource8: TDataSource;
    DataSource9: TDataSource;
    DataSource10: TDataSource;
    DataSource11: TDataSource;
    DataSource12: TDataSource;
    DataSource13: TDataSource;
    Entrees: TADOQuery;
    DataSource14: TDataSource;
    Sorties: TADOQuery;
    DataSource15: TDataSource;
    ProduitTotal: TADOQuery;
    ProduitFaible: TADOQuery;
    ProduitCritique: TADOQuery;
    ProduitRupture: TADOQuery;
    DataSource16: TDataSource;
    DataSource17: TDataSource;
    DataSource18: TDataSource;
    DataSource19: TDataSource;
    Produit: TADOQuery;
    ProduitID_Produit: TAutoIncField;
    ProduitDesignation_Produit: TStringField;
    ProduitQuantite_en_stock: TIntegerField;
    ProduitDivision: TStringField;
    BonSortieID_BonS: TAutoIncField;
    BonSortieDate_sortie: TStringField;
    BonSortieID_BENEFICIAIRE: TIntegerField;
    BonAffectationID_BonAff: TAutoIncField;
    BonAffectationDate_affectation: TStringField;
    BonAffectationID_BENEFICIAIRE: TIntegerField;
    BonLivraisonID_BonDeLivraison: TAutoIncField;
    BonLivraisonDate_Livraison: TStringField;
    BonLivraisonPrix_U: TBCDField;
    BonLivraisonPrix_T: TBCDField;
    BonLivraisonID_BDC: TIntegerField;
    BonLivraisonID_Fournisseur: TIntegerField;
    BonCommandeID_BDC: TAutoIncField;
    BonCommandeDate_Commande: TStringField;
    BonCommandeID_Fournisseur: TIntegerField;
    FournisseurID_Fournisseur: TAutoIncField;
    FournisseurNom: TStringField;
    FournisseurType_Fournisseur: TStringField;
    FournisseurAdresse: TStringField;
    FournisseurEmail: TStringField;
    FournisseurTel: TStringField;
    BeneficiaireID_BENEFICIAIRE: TAutoIncField;
    BeneficiaireNom: TStringField;
    BeneficiaireType_Beneficiaire: TStringField;
    BeneficiaireAdresse: TStringField;
    BeneficiaireEmail: TStringField;
    BeneficiaireTel: TStringField;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
