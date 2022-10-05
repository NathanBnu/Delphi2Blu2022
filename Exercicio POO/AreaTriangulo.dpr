program AreaTriangulo;

uses
  Vcl.Forms,
  uFrmPrimeiraClasse in 'uFrmPrimeiraClasse.pas' {frmPrimeiraClasse};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrimeiraClasse, frmPrimeiraClasse);
  Application.Run;
end.
