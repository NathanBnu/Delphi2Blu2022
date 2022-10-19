program Aula02;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  CapacitacaoPOO.Classes.Pessoa in 'CapacitacaoPOO.Classes.Pessoa.pas',
  CapacitacaoPOO.Classes.Cliente in 'CapacitacaoPOO.Classes.Cliente.pas',
  CapacitacaoPOO.Classes.Usuario in 'CapacitacaoPOO.Classes.Usuario.pas',
  CapacitacaoPOO.Classes.Administrador in 'CapacitacaoPOO.Classes.Administrador.pas';

var
  Pessoa: TPessoa;
begin
  try
    Pessoa := TPessoa.Create;
    Writeln('Digite o nome da pessoa: ');
    Readln(Pessoa.Nome);
    Writeln('O nome da pessoa é: ' + Pessoa.Nome);
    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
