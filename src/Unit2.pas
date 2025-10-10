unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvPageControl, Vcl.ComCtrls,
  Vcl.StdCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, cxDBEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, Data.DB,
  cxCurrencyEdit, Vcl.ExtCtrls, AdvToolBtn;

type
  TForm2 = class(TForm)
    AdvPageControl1: TAdvPageControl;
    AdvTabSheet1: TAdvTabSheet;
    AdvTabSheet2: TAdvTabSheet;
    AdvTabSheet3: TAdvTabSheet;
    AdvTabSheet4: TAdvTabSheet;
    AdvTabSheet5: TAdvTabSheet;
    AdvTabSheet6: TAdvTabSheet;
    AdvTabSheet7: TAdvTabSheet;
    Label1: TLabel;
    DataSource1: TDataSource;
    Label2: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label3: TLabel;
    edtDesignation: TcxDBTextEdit;
    Label4: TLabel;
    edtQuantite: TcxDBSpinEdit;
    Label5: TLabel;
    edtDivision: TcxDBTextEdit;
    Label6: TLabel;
    Label7: TLabel;
    DataSource2: TDataSource;
    Label8: TLabel;
    cxDBSpinEdit3: TcxDBSpinEdit;
    Label9: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label10: TLabel;
    cxDBSpinEdit4: TcxDBSpinEdit;
    DataSource3: TDataSource;
    Label11: TLabel;
    cxDBSpinEdit5: TcxDBSpinEdit;
    Label12: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label13: TLabel;
    cxDBSpinEdit6: TcxDBSpinEdit;
    Label14: TLabel;
    DataSource4: TDataSource;
    Label15: TLabel;
    cxDBSpinEdit7: TcxDBSpinEdit;
    Label16: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label17: TLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    Label18: TLabel;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    Label19: TLabel;
    cxDBSpinEdit8: TcxDBSpinEdit;
    Label20: TLabel;
    cxDBSpinEdit9: TcxDBSpinEdit;
    Label21: TLabel;
    DataSource5: TDataSource;
    Label22: TLabel;
    cxDBSpinEdit10: TcxDBSpinEdit;
    Label23: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label24: TLabel;
    cxDBSpinEdit11: TcxDBSpinEdit;
    DataSource6: TDataSource;
    Label25: TLabel;
    cxDBSpinEdit12: TcxDBSpinEdit;
    Label26: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    Label27: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    Label28: TLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    Label29: TLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    Label30: TLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    Label31: TLabel;
    DataSource7: TDataSource;
    Label32: TLabel;
    cxDBSpinEdit13: TcxDBSpinEdit;
    Label33: TLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    Label34: TLabel;
    cxDBTextEdit13: TcxDBTextEdit;
    Label35: TLabel;
    cxDBTextEdit14: TcxDBTextEdit;
    Label36: TLabel;
    cxDBTextEdit15: TcxDBTextEdit;
    Label37: TLabel;
    cxDBTextEdit16: TcxDBTextEdit;
    Label38: TLabel;
    AdvToolButton10: TAdvToolButton;
    Panel1: TPanel;
    AdvToolButton12: TAdvToolButton;
    procedure AdvToolButton10Click(Sender: TObject);
    procedure AdvToolButton12Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Code;

procedure TForm2.AdvToolButton10Click(Sender: TObject);
begin
  try
    // Remplir les champs depuis les TEdit
    DataModule2.Produit.FieldByName('Designation_Produit').AsString := edtDesignation.Text;
    DataModule2.Produit.FieldByName('Quantite_en_stock').AsInteger := StrToIntDef(edtQuantite.Text,0);
    DataModule2.Produit.FieldByName('Division').AsString := edtDivision.Text;

    // Post juste les données
    DataModule2.Produit.Post;

    // Fermer le form
    ModalResult := mrOk;
  except
    on E: Exception do
  end;
end;

procedure TForm2.AdvToolButton12Click(Sender: TObject);
begin
  // Annuler l'édition en cours (si append)
  if DataModule2.Produit.State in [dsInsert, dsEdit] then
    DataModule2.Produit.Cancel;

  ModalResult := mrCancel;
end;

end.
