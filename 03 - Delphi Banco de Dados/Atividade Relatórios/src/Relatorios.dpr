program Relatorios;

uses
  Vcl.Forms,
  ufrmPrincipal in '..\ufrmPrincipal.pas' {frmPrincipal},
  ufrmAtividade1 in 'ufrmAtividade1.pas' {frmAtividade1},
  udmConexao in 'model\udmConexao.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
