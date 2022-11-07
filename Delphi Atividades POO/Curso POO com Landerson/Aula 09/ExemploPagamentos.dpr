program ExemploPagamentos;

uses
  Vcl.Forms,
  View.Principal in 'View.Principal.pas' {Form1},
  Classes.Pagamento in 'Classes.Pagamento.pas',
  Classes.Dinheiro in 'Classes.Dinheiro.pas',
  Classes.Pix in 'Classes.Pix.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
