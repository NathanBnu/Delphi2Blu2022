unit uPessoa;

interface

type

  TPessoa = class
    private 
      Fnome: String;
      FDataNascimento: TDate;
      FAltura: Double;
      FIdade: Double;

      function GetNome: String;
      function GetDataNascimento: TDate;
      function GetAltura: Double;
      
      procedure SetNome(const Value: String);
      procedure SetAltura(const Value: Double);
      procedure SetDataNascimento(const Value: TDate);
    
    public

      property Nome: String read GetNome write SetNome;
      property DataNascimento: TDate read GetDataNascimento write SetDataNascimento;
      property Altura: Double read GetAltura write SetAltura;
  end;
  

implementation

{ TPessoa }

function TPessoa.GetAltura: Double;
begin
  Result := FAltura;
end;

function TPessoa.GetDataNascimento: TDate;
begin
  Result := FDataNascimento;
end;

function TPessoa.GetNome: String;
begin
  Result := FNome;
end;

procedure TPessoa.SetAltura(const Value: Double);
begin
  FAltura := Value;
end;

procedure TPessoa.SetDataNascimento(const Value: TDate);
begin
  FDataNascimento := Value;
end;

procedure TPessoa.SetNome(const Value: String);
begin
  FNome := Value;
end;


end.
