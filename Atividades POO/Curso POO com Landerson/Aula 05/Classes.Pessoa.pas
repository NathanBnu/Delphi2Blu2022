unit Classes.Pessoa;

interface

type
  TPessoa = class
    private
      FNome: String;
      FTelefone: String;

      procedure SetNome(const Value: String);
      procedure SetTelefone(const Value: String);
      function GetTelefone: String;
      function GetNome: String;

    public
      FRG: String; // Não é comum campos publico
      property Nome: String read GetNome write SetNome;
      property Telefone: String read GetTelefone write SetTelefone;
      constructor Create;
      destructor Destrou;
  end;

implementation

uses
  SysUtils;

{ TPessoa }

constructor TPessoa.Create;
begin
  Nome := 'Delphi';
  Telefone := '047';
end;

destructor TPessoa.Destrou;
begin
  Self.Free;
end;

function TPessoa.GetNome: String;
begin
  Result := UpperCase(FNome);     //FORMATAR EM LETRA MAIUSCULA
end;

function TPessoa.GetTelefone: String;
begin
  Result := FTelefone;
end;

procedure TPessoa.SetNome(const Value: String);
begin
  if not Value.isEmpty then
    FNome := Value
  else
    raise Exception.Create('Nome não pode ser vazio');
end;

procedure TPessoa.SetTelefone(const Value: String);
begin
  FTelefone := Value;
end;

end.
