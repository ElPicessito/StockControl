program StockControl;

uses
  Vcl.Forms,
  Menu in 'Menu.pas' {Form1},
  Code in 'Code.pas' {DataModule2: TDataModule},
  Box in 'Box.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
