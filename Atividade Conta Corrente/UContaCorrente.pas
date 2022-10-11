unit UContaCorrente;

interface

type
  TContaCorrente = Class
    private
      FNumeroConta: Integer;
      FNomeCorretista: String;
      FSaldo: Double;

      function GetNomeCorretista: String;
      function GetNumeroConta: Integer;
      function GetSaldo: Double;

      procedure SetNomeCorretista(const Value: String);
      procedure SetNumeroConta(const Value: Integer);
      procedure SetSaldo(const Value: Double);

    public
      procedure alterarNome;
      function Deposito: Double;
      function Saque: Double;

      property NumeroConta: Integer read GetNumeroConta write SetNumeroConta;
      property NomeCorretista: String read GetNomeCorretista write SetNomeCorretista;
      property Saldo: Double read GetSaldo write SetSaldo;
  End;

implementation

{ TContaCorrente }

//EDITAR
procedure TContaCorrente.alterarNome;
begin
  NomeCorretista := 'fgdsgfd';
end;

function TContaCorrente.Deposito: Double;
begin

end;

function TContaCorrente.GetNomeCorretista: String;
begin
  Result := FNomeCorretista;
end;

function TContaCorrente.GetNumeroConta: Integer;
begin
  Result := FNumeroConta;
end;

function TContaCorrente.GetSaldo: Double;
begin
  Result := FSaldo;
end;

function TContaCorrente.Saque: Double;
begin

end;

procedure TContaCorrente.SetNomeCorretista(const Value: String);
begin
  FNomeCorretista := Value;
end;

procedure TContaCorrente.SetNumeroConta(const Value: Integer);
begin
    FNumeroConta := Value;
end;

procedure TContaCorrente.SetSaldo(const Value: Double);
begin
  FSaldo := Value;
end;

end.
