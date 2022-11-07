program Trabalhador;

uses
  Vcl.Forms,
  View.Form1 in 'View.Form1.pas' {Form1},
  Classes.Trabalhador in 'Classes.Trabalhador.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
