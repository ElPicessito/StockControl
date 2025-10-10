unit Menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, JvGIF, System.Skia,
  Vcl.Skia, CurvyControls, Vcl.ComCtrls, acPNG, Vcl.StdCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxCoreGraphics, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinWXI,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxButtonEdit, Vcl.Buttons,
  AdvGlassButton, AdvMetroButton, AdvToolBtn, AdvPageControl, AdvOfficePager,
  Data.DB, Vcl.Grids, Vcl.DBGrids, AdvUtil, AdvObj, BaseGrid, AdvGrid, DBAdvGrid,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, Vcl.WinXCtrls, System.UITypes;

type
  TForm1 = class(TForm)
    SkAnimatedImage1: TSkAnimatedImage;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    z: TImage;
    Label1: TLabel;
    Image2: TImage;
    edtUsername: TCurvyEdit;
    edtPassword: TCurvyEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    AdvToolButton1: TAdvToolButton;
    AdvToolButton2: TAdvToolButton;
    SpeedButton1: TSpeedButton;
    TabSheet3: TTabSheet;
    SkAnimatedImage2: TSkAnimatedImage;
    Label5: TLabel;
    Timer1: TTimer;
    TabSheet2: TTabSheet;
    TabSheet4: TTabSheet;
    Panel2: TPanel;
    AdvToolButton3: TAdvToolButton;
    AdvToolButton4: TAdvToolButton;
    edtRPassword: TCurvyEdit;
    edtRUsername: TCurvyEdit;
    Image1: TImage;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    edtRPasswordV: TCurvyEdit;
    Label6: TLabel;
    Image3: TImage;
    SkAnimatedImage3: TSkAnimatedImage;
    Label11: TLabel;
    TaskBar: TPanel;
    Main: TPanel;
    CurvyPanel1: TCurvyPanel;
    CurvyPanel2: TCurvyPanel;
    Image4: TImage;
    Label12: TLabel;
    Label13: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    TabSheet5: TTabSheet;
    AdvPageControl1: TAdvPageControl;
    AdvTabSheet1: TAdvTabSheet;
    Label14: TLabel;
    AdvTabSheet2: TAdvTabSheet;
    AdvTabSheet3: TAdvTabSheet;
    AdvTabSheet4: TAdvTabSheet;
    AdvTabSheet5: TAdvTabSheet;
    AdvTabSheet6: TAdvTabSheet;
    AdvTabSheet7: TAdvTabSheet;
    AdvTabSheet8: TAdvTabSheet;
    AdvTabSheet9: TAdvTabSheet;
    Label18: TLabel;
    LabelBon: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label25: TLabel;
    Label10: TLabel;
    Label32: TLabel;
    Panel3: TPanel;
    Label33: TLabel;
    edtAdminUser: TCurvyEdit;
    Label34: TLabel;
    edtAdminPass: TCurvyEdit;
    BtnReset: TAdvToolButton;
    Label35: TLabel;
    edtTargetUser: TCurvyEdit;
    Label36: TLabel;
    edtNewPass: TCurvyEdit;
    AdvToolButton6: TAdvToolButton;
    LabelReset: TLabel;
    LabelDate: TLabel;
    PanelDeTexte: TPanel;
    PanelSuperieur: TPanel;
    CurvyPanel6: TCurvyPanel;
    Image5: TImage;
    Label15: TLabel;
    Label37: TLabel;
    lblRuptures: TLabel;
    CurvyPanel3: TCurvyPanel;
    Image6: TImage;
    Label39: TLabel;
    Label40: TLabel;
    lblCritiques: TLabel;
    CurvyPanel4: TCurvyPanel;
    Image7: TImage;
    Label42: TLabel;
    Label43: TLabel;
    lblFaibles: TLabel;
    CurvyPanel5: TCurvyPanel;
    Image8: TImage;
    Label45: TLabel;
    Label46: TLabel;
    lblTotalProduits: TLabel;
    PanelInferieur: TPanel;
    Info: TCurvyPanel;
    Label48: TLabel;
    Panel7: TPanel;
    Produit: TCurvyPanel;
    CurvyPanel12: TCurvyPanel;
    Label49: TLabel;
    Label50: TLabel;
    AdvToolButton5: TAdvToolButton;
    Fournisseur: TCurvyPanel;
    CurvyPanel10: TCurvyPanel;
    Label51: TLabel;
    Label52: TLabel;
    AdvToolButton7: TAdvToolButton;
    Bon: TCurvyPanel;
    CurvyPanel13: TCurvyPanel;
    Label53: TLabel;
    Label54: TLabel;
    AdvToolButton8: TAdvToolButton;
    Beneficiaire: TCurvyPanel;
    CurvyPanel15: TCurvyPanel;
    Label55: TLabel;
    Label56: TLabel;
    AdvToolButton9: TAdvToolButton;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ID_Produit: TcxGridDBColumn;
    cxGrid1DBTableView1Designation_Produit: TcxGridDBColumn;
    cxGrid1DBTableView1Quantite_en_stock: TcxGridDBColumn;
    cxGrid1DBTableView1Division: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Grid: TCurvyPanel;
    PanelCentral: TPanel;
    PanelTexte: TPanel;
    Label57: TLabel;
    Label58: TLabel;
    Commande: TPanel;
    Space1: TPanel;
    AdvToolButton11: TAdvToolButton;
    AdvToolButton10: TAdvToolButton;
    AdvToolButton12: TAdvToolButton;
    AdvToolButton13: TAdvToolButton;
    Panel5: TPanel;
    CurvyPanel7: TCurvyPanel;
    Panel6: TPanel;
    CurvyPanel8: TCurvyPanel;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    Panel4: TPanel;
    CurvyPanel9: TCurvyPanel;
    cxGrid5: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    Panel8: TPanel;
    AdvToolButton14: TAdvToolButton;
    AdvToolButton15: TAdvToolButton;
    AdvToolButton16: TAdvToolButton;
    AdvToolButton17: TAdvToolButton;
    CurvyCombo1: TCurvyCombo;
    Panel9: TPanel;
    AdvPageControl2: TAdvPageControl;
    AdvTabSheet10: TAdvTabSheet;
    AdvTabSheet11: TAdvTabSheet;
    AdvTabSheet12: TAdvTabSheet;
    AdvTabSheet13: TAdvTabSheet;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGrid6: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridLevel5: TcxGridLevel;
    cxGrid7: TcxGrid;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridLevel6: TcxGridLevel;
    cxGrid8: TcxGrid;
    cxGridDBTableView7: TcxGridDBTableView;
    cxGridLevel7: TcxGridLevel;
    cxGridDBTableView2ID_BonS: TcxGridDBColumn;
    cxGridDBTableView2Date_sortie: TcxGridDBColumn;
    cxGridDBTableView2ID_BENEFICIAIRE: TcxGridDBColumn;
    cxGridDBTableView5ID_BonDeLivraison: TcxGridDBColumn;
    cxGridDBTableView5Date_Livraison: TcxGridDBColumn;
    cxGridDBTableView5Prix_U: TcxGridDBColumn;
    cxGridDBTableView5Prix_T: TcxGridDBColumn;
    cxGridDBTableView5ID_Fournisseur: TcxGridDBColumn;
    cxGridDBTableView6ID_BDC: TcxGridDBColumn;
    cxGridDBTableView6Date_Commande: TcxGridDBColumn;
    cxGridDBTableView6ID_Fournisseur: TcxGridDBColumn;
    cxGridDBTableView7ID_BonAff: TcxGridDBColumn;
    cxGridDBTableView7Date_affectation: TcxGridDBColumn;
    cxGridDBTableView7ID_BENEFICIAIRE: TcxGridDBColumn;
    AdvTabSheet14: TAdvTabSheet;
    cxGridDBTableView3ID_Fournisseur: TcxGridDBColumn;
    cxGridDBTableView3Nom: TcxGridDBColumn;
    cxGridDBTableView3Type_Fournisseur: TcxGridDBColumn;
    cxGridDBTableView3Adresse: TcxGridDBColumn;
    cxGridDBTableView3Email: TcxGridDBColumn;
    cxGridDBTableView3Tel: TcxGridDBColumn;
    Panel10: TPanel;
    AdvToolButton18: TAdvToolButton;
    AdvToolButton19: TAdvToolButton;
    AdvToolButton20: TAdvToolButton;
    AdvToolButton21: TAdvToolButton;
    cxGridDBTableView4ID_BENEFICIAIRE: TcxGridDBColumn;
    cxGridDBTableView4Nom: TcxGridDBColumn;
    cxGridDBTableView4Type_Beneficiaire: TcxGridDBColumn;
    cxGridDBTableView4Adresse: TcxGridDBColumn;
    cxGridDBTableView4Email: TcxGridDBColumn;
    cxGridDBTableView4Tel: TcxGridDBColumn;
    Panel11: TPanel;
    AdvToolButton22: TAdvToolButton;
    AdvToolButton23: TAdvToolButton;
    AdvToolButton24: TAdvToolButton;
    AdvToolButton25: TAdvToolButton;
    Panel12: TPanel;
    CurvyPanel11: TCurvyPanel;
    cxGrid9: TcxGrid;
    cxGridDBTableView8: TcxGridDBTableView;
    cxGridLevel8: TcxGridLevel;
    Panel13: TPanel;
    Panel14: TPanel;
    cxGridDBTableView8DateEntree: TcxGridDBColumn;
    cxGridDBTableView8Designation_Produit: TcxGridDBColumn;
    cxGridDBTableView8Quantite: TcxGridDBColumn;
    cxGridDBTableView8Fournisseur: TcxGridDBColumn;
    Panel15: TPanel;
    CurvyPanel14: TCurvyPanel;
    cxGrid10: TcxGrid;
    cxGridDBTableView9: TcxGridDBTableView;
    cxGridLevel9: TcxGridLevel;
    cxGridDBTableView9DateSortie: TcxGridDBColumn;
    cxGridDBTableView9Designation_Produit: TcxGridDBColumn;
    cxGridDBTableView9Quantite: TcxGridDBColumn;
    cxGridDBTableView9Beneficiaire: TcxGridDBColumn;
    cxStyleRepository3: TcxStyleRepository;
    cxStyle3: TcxStyle;
    CurvyPanel16: TCurvyPanel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure AdvToolButton1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AdvToolButton2Click(Sender: TObject);
    procedure AdvToolButton4Click(Sender: TObject);
    procedure AdvToolButton3Click(Sender: TObject);
    procedure edtUsernameKeyPress(Sender: TObject; var Key: Char);
    procedure edtPasswordKeyPress(Sender: TObject; var Key: Char);
    procedure edtRUsernameKeyPress(Sender: TObject; var Key: Char);
    procedure edtRPasswordKeyPress(Sender: TObject; var Key: Char);
    procedure edtRPasswordVKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AdvToolButton6Click(Sender: TObject);
    procedure BtnResetClick(Sender: TObject);
    procedure edtAdminUserKeyPress(Sender: TObject; var Key: Char);
    procedure edtAdminPassKeyPress(Sender: TObject; var Key: Char);
    procedure edtTargetUserKeyPress(Sender: TObject; var Key: Char);
    procedure edtNewPassKeyPress(Sender: TObject; var Key: Char);
    procedure AdvToolButton5Click(Sender: TObject);
    procedure AdvToolButton7Click(Sender: TObject);
    procedure AdvToolButton8Click(Sender: TObject);
    procedure AdvToolButton9Click(Sender: TObject);
    procedure AdvToolButton12Click(Sender: TObject);
    procedure CurvyCombo1Change(Sender: TObject);
    procedure AdvToolButton16Click(Sender: TObject);
    procedure AdvToolButton20Click(Sender: TObject);
    procedure AdvToolButton24Click(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure AdvToolButton10Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Code, Unit2;

procedure TForm1.AdvToolButton10Click(Sender: TObject);
begin
  // Passer en mode Append avant d'ouvrir Form2
  DataModule2.Produit.Append;

  Form2 := TForm2.Create(Self);
  try
    if Form2.ShowModal = mrOk then
    begin
      // L'enregistrement est d�j� post�, on peut rafra�chir
      cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
    end
    else
    begin
      // Annuler l'append si l'utilisateur a annul�
      if DataModule2.Produit.State in [dsInsert, dsEdit] then
        DataModule2.Produit.Cancel;
    end;
  finally
    Form2.Free;
  end;
end;

procedure TForm1.AdvToolButton12Click(Sender: TObject);
begin
  if not DataModule2.Produit.IsEmpty then
    if MessageDlg('Supprimer cet enregistrement ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      DataModule2.Produit.Delete;
end;

procedure TForm1.AdvToolButton16Click(Sender: TObject);
begin
  case CurvyCombo1.ItemIndex of
    0: // Bon de sortie
      if not DataModule2.BonSortie.IsEmpty then
        if MessageDlg('Supprimer ce Bon de sortie ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          DataModule2.BonSortie.Delete;

    1: // Bon de livraison
      if not DataModule2.BonLivraison.IsEmpty then
        if MessageDlg('Supprimer ce Bon de livraison ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          DataModule2.BonLivraison.Delete;

    2: // Bon de commande
      if not DataModule2.BonCommande.IsEmpty then
        if MessageDlg('Supprimer ce Bon de commande ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          DataModule2.BonCommande.Delete;

    3: // Bon d�affectation
      if not DataModule2.BonAffectation.IsEmpty then
        if MessageDlg('Supprimer ce Bon d�affectation ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          DataModule2.BonAffectation.Delete;
  else
    ShowMessage('Veuillez s�lectionner un type de bon dans la liste.');
  end;
end;

procedure TForm1.AdvToolButton1Click(Sender: TObject);
begin
  // V�rification si les champs sont remplis
  if (edtUsername.Text = '') or (edtPassword.Text = '') then
  begin
    Label5.Caption := 'Veuillez remplir tous les champs.';
    Label5.Visible := True;
    Exit;
  end;

  // V�rification des identifiants dans la base USERS
  DataModule2.USERS.Close;
  DataModule2.USERS.SQL.Text := 'SELECT * FROM USERS WHERE Username = :user AND Password = :pass';
  DataModule2.USERS.Parameters.ParamByName('user').Value := edtUsername.Text;
  DataModule2.USERS.Parameters.ParamByName('pass').Value := edtPassword.Text;
  DataModule2.USERS.Open;

  if not DataModule2.USERS.Eof then
  begin
  PageControl1.ActivePage := PageControl1.Pages[1];
  Timer1.Enabled := True;
  Label12.Caption := DataModule2.USERS.FieldByName('Username').AsString;
  Label14.Caption := 'Bienvenue dans votre espace personnel, ' + DataModule2.USERS.FieldByName('Username').AsString;
  end
  else
  begin
    Label5.Caption := 'Identifiants incorrects.';
    Label5.Visible := True;
  end;
end;

procedure TForm1.AdvToolButton20Click(Sender: TObject);
begin
  if not DataModule2.Fournisseur.IsEmpty then
    if MessageDlg('Supprimer cet enregistrement ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      DataModule2.Fournisseur.Delete;
end;

procedure TForm1.AdvToolButton24Click(Sender: TObject);
begin
  if not DataModule2.beneficiaire.IsEmpty then
    if MessageDlg('Supprimer cet enregistrement ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      DataModule2.beneficiaire.Delete;
end;

procedure TForm1.AdvToolButton2Click(Sender: TObject);
begin
PageControl1.ActivePage := Tabsheet2;
end;

procedure TForm1.AdvToolButton3Click(Sender: TObject);
begin
// V�rification si les champs sont remplis
if (edtRUsername.Text = '') or (edtRPassword.Text = '') or (edtRPasswordV.Text = '') then
begin
  Label11.Caption := 'Veuillez remplir tous les champs.';
  Label11.Visible := True;
  Exit;
end;

// V�rification si l'utilisateur existe d�j�
DataModule2.USERS.Close;
DataModule2.USERS.SQL.Text := 'SELECT * FROM USERS WHERE Username = :user';
DataModule2.USERS.Parameters.ParamByName('user').Value := edtRUsername.Text;
DataModule2.USERS.Open;

if not DataModule2.USERS.Eof then
begin
  Label11.Caption := 'Nom d''utilisateur d�j� existant.';
  Label11.Visible := True;
  Exit;
end;

// V�rification que les deux mots de passe correspondent
if edtRPassword.Text <> edtRPasswordV.Text then
begin
  Label11.Caption := 'Les mots de passe ne correspondent pas.';
  Label11.Visible := True;
  Exit;
end;

// Insertion du nouvel utilisateur
DataModule2.USERS.Close;
DataModule2.USERS.SQL.Text := 'INSERT INTO USERS (Username, Password) VALUES (:user, :pass)';
DataModule2.USERS.Parameters.ParamByName('user').Value := edtRUsername.Text;
DataModule2.USERS.Parameters.ParamByName('pass').Value := edtRPassword.Text;
DataModule2.USERS.ExecSQL;

// Donner acc�s apr�s inscription
PageControl1.ActivePage := PageControl1.Pages[1];
Timer1.Enabled := True;
Label12.Caption := edtRUsername.Text;
Label14.Caption := 'Bienvenue dans votre espace personnel, ' + edtRUsername.Text;
end;

procedure TForm1.AdvToolButton4Click(Sender: TObject);
begin
PageControl1.ActivePage := Tabsheet1;
end;

procedure TForm1.AdvToolButton5Click(Sender: TObject);
begin
AdvPageControl1.ActivePage := AdvTabsheet2;
end;

procedure TForm1.AdvToolButton6Click(Sender: TObject);
begin
Pagecontrol1.ActivePage := Tabsheet1;
end;

procedure TForm1.AdvToolButton7Click(Sender: TObject);
begin
AdvPageControl1.ActivePage := AdvTabsheet4;
end;

procedure TForm1.AdvToolButton8Click(Sender: TObject);
begin
AdvPageControl1.ActivePage := AdvTabsheet3;
end;

procedure TForm1.AdvToolButton9Click(Sender: TObject);
begin
AdvPageControl1.ActivePage := AdvTabsheet5;
end;

procedure TForm1.BtnResetClick(Sender: TObject);
begin
// V�rification si les champs sont remplis
  if (edtAdminUser.Text = '') or (edtAdminPass.Text = '') or
     (edtTargetUser.Text = '') or (edtNewPass.Text = '') then
  begin
    LabelReset.Caption := 'Veuillez remplir tous les champs.';
    LabelReset.Visible := True;
    Exit;
  end;

  // V�rification si l'admin est valide et approuv�
  DataModule2.Users.Close;
  DataModule2.Users.SQL.Text :=
    'SELECT * FROM Users WHERE Username = :user AND Password = :pass ' +
    'AND IsAdmin = 1 AND IsApproved = 1';
  DataModule2.Users.Parameters.ParamByName('user').Value := edtAdminUser.Text;
  DataModule2.Users.Parameters.ParamByName('pass').Value := edtAdminPass.Text;
  DataModule2.Users.Open;

  if DataModule2.Users.Eof then
  begin
    LabelReset.Caption := 'Acc�s refus� : seul un administrateur approuv� peut r�initialiser les mots de passe.';
    LabelReset.Visible := True;
    Exit;
  end;

  // V�rifier que l�utilisateur cible existe
  DataModule2.Users.Close;
  DataModule2.Users.SQL.Text :=
    'SELECT * FROM Users WHERE Username = :target';
  DataModule2.Users.Parameters.ParamByName('target').Value := edtTargetUser.Text;
  DataModule2.Users.Open;

  if DataModule2.Users.Eof then
  begin
    LabelReset.Caption := 'Utilisateur cible introuvable.';
    LabelReset.Visible := True;
    Exit;
  end;

  // Mise � jour du mot de passe
  DataModule2.Users.Close;
  DataModule2.Users.SQL.Text :=
    'UPDATE Users SET Password = :newpass WHERE Username = :target';
  DataModule2.Users.Parameters.ParamByName('newpass').Value := edtNewPass.Text;
  DataModule2.Users.Parameters.ParamByName('target').Value := edtTargetUser.Text;
  DataModule2.Users.ExecSQL;

  LabelReset.Caption := 'Mot de passe r�initialis� avec succ�s.';
  LabelReset.Visible := True;
end;

procedure TForm1.CurvyCombo1Change(Sender: TObject);
begin
 if CurvyCombo1.ItemIndex = 0 then
 begin
   AdvPageControl2.ActivePageIndex := 0;
   LabelBon.caption := 'Bon de sortie'
 end;
  if CurvyCombo1.ItemIndex = 1 then
 begin
   AdvPageControl2.ActivePageIndex := 1;
   LabelBon.caption := 'Bon de livraison'
 end;
  if CurvyCombo1.ItemIndex = 2 then
 begin
   AdvPageControl2.ActivePageIndex := 2;
   LabelBon.caption := 'Bon de commande'
 end;
  if CurvyCombo1.ItemIndex = 3 then
 begin
   AdvPageControl2.ActivePageIndex := 3;
   LabelBon.caption := 'Bon d''affectation'
 end;
end;

procedure TForm1.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var
  Qty: Integer;
  bgColor: TColor;
  v: Variant;
begin
  if AViewInfo.GridRecord <> nil then
  begin
    // R�cup�rer la quantit� du produit en g�rant les NULL/Variant
    v := AViewInfo.GridRecord.Values[cxGrid1DBTableView1Quantite_en_stock.Index];
    if VarIsNull(v) then
      Qty := 0
    else
      Qty := v; // variant contenant un entier ou convertible

    // D�terminer la couleur selon la quantit� (pastel)
    if Qty = 0 then
      bgColor := RGB(255, 102, 102)     // rouge pastel
    else if Qty < 3 then
      bgColor := RGB(255, 178, 102)     // orange pastel
    else if Qty < 10 then
      bgColor := RGB(255, 255, 153)     // jaune pastel
    else
      bgColor := RGB(204, 255, 204);    // vert pastel

    // Appliquer la couleur de fond � la cellule courante
    ACanvas.Brush.Color := bgColor;
    ACanvas.FillRect(AViewInfo.Bounds);

    // D�terminer la couleur du texte
    if (Qty = 0) or (Qty < 3) then
      ACanvas.Font.Color := clWhite      // texte clair sur rouge/orange
    else
      ACanvas.Font.Color := clBlack;     // texte noir sur jaune/vert

    // Laisser cxGrid dessiner le texte normalement
    ADone := False;
  end;
end;

procedure TForm1.edtAdminPassKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0; // Supprimer le bip
    edtTargetUser.SetFocus; // Aller directement � edtPassword
  end;
end;

procedure TForm1.edtAdminUserKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0; // Supprimer le bip
    edtAdminPass.SetFocus; // Aller directement � edtPassword
  end;
end;

procedure TForm1.edtNewPassKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    BtnReset.Click;
  end;
end;

procedure TForm1.edtPasswordKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    AdvToolButton1.Click;
  end;
end;

procedure TForm1.edtRPasswordKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0; // Supprimer le bip
    edtRPasswordV.SetFocus; // Aller directement � edtPassword
  end;
end;

procedure TForm1.edtRPasswordVKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    AdvToolButton3.Click;
  end;
end;

procedure TForm1.edtRUsernameKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0; // Supprimer le bip
    edtRPassword.SetFocus; // Aller directement � edtPassword
  end;
end;

procedure TForm1.edtTargetUserKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0; // Supprimer le bip
    edtNewPass.SetFocus; // Aller directement � edtPassword
  end;
end;

procedure TForm1.edtUsernameKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0; // Supprimer le bip
    edtPassword.SetFocus; // Aller directement � edtPassword
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
//Commande de demarrage
PageControl1.ActivePage := Tabsheet1;
AdvPageControl1.ActivePage := AdvTabsheet1;
Timer1.Enabled := False;
AdvPageControl2.ActivePageIndex := 4;
//Mode de teste
PageControl1.ActivePage := PageControl1.Pages[1];
Timer1.Enabled := True;
//Mise a jour dashboard
end;

procedure TForm1.FormShow(Sender: TObject);
begin
LabelDate.Caption := FormatDateTime('dddd d mmmm', Date);
  try
    // S'assurer que la connexion est active
    if not DataModule2.ADO.Connected then
      DataModule2.ADO.Connected := True;

    // V�rifier si la table Users est vide
    DataModule2.Users.Close;
    DataModule2.Users.SQL.Text := 'SELECT COUNT(*) AS Cnt FROM Users';
    DataModule2.Users.Open;

    if DataModule2.Users.FieldByName('Cnt').AsInteger = 0 then
    begin
      // Ins�rer admin/admin avec droits admin
      DataModule2.Users.Close;
      DataModule2.Users.SQL.Text :=
        'INSERT INTO Users (Username, Password, IsAdmin, IsApproved) ' +
        'VALUES (''admin'', ''admin'', 1, 1)';
      DataModule2.Users.ExecSQL;

      Label5.Caption := 'Utilisateur par d�faut cr�� : admin/admin.';
      Label5.Visible := True;
    end;

  except
    on E: Exception do
      ShowMessage('Erreur init USERS : ' + E.Message);
  end;
end;

procedure TForm1.Label4Click(Sender: TObject);
begin
PageControl1.ActivePage := Tabsheet5;
end;

procedure TForm1.SpeedButton10Click(Sender: TObject);
begin
AdvPageControl1.ActivePage := AdvTabsheet2;
end;

procedure TForm1.SpeedButton11Click(Sender: TObject);
begin
AdvPageControl1.ActivePage := AdvTabsheet1;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
if edtpassword.PasswordChar = #0 then
 edtpassword.PasswordChar := '*'
  else
   edtpassword.PasswordChar := #0;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
PageControl1.ActivePage := Tabsheet1;
form1.WindowState := wsnormal;
Form1.Color := $00ECF4FF;
Self.BorderStyle := TFormBorderStyle(bsNone);
Label5.Visible := False;
Label11.Visible := False;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
AdvPageControl1.ActivePage := AdvTabsheet8;
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
AdvPageControl1.ActivePage := AdvTabsheet9;
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
AdvPageControl1.ActivePage := AdvTabsheet7;
end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
begin
AdvPageControl1.ActivePage := AdvTabsheet6;
end;

procedure TForm1.SpeedButton7Click(Sender: TObject);
begin
AdvPageControl1.ActivePage := AdvTabsheet5;
end;

procedure TForm1.SpeedButton8Click(Sender: TObject);
begin
AdvPageControl1.ActivePage := AdvTabsheet4;
end;

procedure TForm1.SpeedButton9Click(Sender: TObject);
begin
AdvPageControl1.ActivePage := AdvTabsheet3;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  //Fonctionnement
  Form1.BorderStyle := bsSizeable;
  PageControl1.ActivePageIndex := 3;
  Timer1.Enabled := False;
  form1.WindowState := wsMaximized;
  Form1.Color := clBtnFace;
  //Statistiques
  DataModule2.ProduitTotal.Open;
  DataModule2.ProduitFaible.Open;
  DataModule2.ProduitCritique.Open;
  DataModule2.ProduitRupture.Open;
  lblTotalProduits.Caption := DataModule2.ProduitTotal.FieldByName('TotalProduits').AsString;
  lblFaibles.Caption       := DataModule2.ProduitFaible.FieldByName('StockFaible').AsString;
  lblCritiques.Caption     := DataModule2.ProduitCritique.FieldByName('ProduitsCritiques').AsString;
  lblRuptures.Caption      := DataModule2.ProduitRupture.FieldByName('RuptureStock').AsString;
end;

end.
