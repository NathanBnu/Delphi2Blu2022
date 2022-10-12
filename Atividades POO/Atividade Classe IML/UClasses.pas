unit UClasses;

interface

type
  TPessoa = class
  private
    FNome: String;
    FEndereco: String;

    function GetEndereco: String;
    function GetNome: String;

    procedure SetNome(const Value: String);
    procedure SetEndereco(const Value: String);

  public
    Procedure Gravar;
    property Nome: String read GetNome write SetNome;
    property Endereco: String read GetEndereco write SetEndereco;
  end;

  TPessoaFisica = class(TPessoa)
  private
    FCPF: String;
    FIdade: Byte;

    function GetCPF: String;
    function GetIdade: Byte;

    procedure SetCPF(const Value: String);
    procedure SetIdade(const Value: Byte);

  public
    procedure CPF_Valido;
    property CPF: String read GetCPF write SetCPF;
    property Idade: Byte read GetIdade write SetIdade;
  end;

  TPessoaJuridica = class(TPessoa)
  private
    FCNPJ: String;
    FIE: String;

    function GetCNPJ: String;
    function GetFIE: String;

    procedure SetCNPJ(const Value: String);
    procedure SetFIE(const Value: String);

  public
    procedure CNPJ_Valido;
    property CNPJ: String read GetCNPJ write SetCNPJ;
    property IE: String read GetFIE write SetFIE;
  end;

implementation


{ TPessoa }

function TPessoa.GetEndereco: String;
begin
  Result :=  FEndereco;
end;

function TPessoa.GetNome: String;
begin
  Result := FNome;
end;

procedure TPessoa.Gravar;
begin

end;

procedure TPessoa.SetEndereco(const Value: String);
begin
  FEndereco := Value;
end;

procedure TPessoa.SetNome(const Value: String);
begin
  FEndereco := Value;
end;

{ TPessoaJuridica }

procedure TPessoaFisica.CPF_Valido;
begin

end;

function TPessoaFisica.GetCPF: String;
begin
  Result := FCPF;
end;

function TPessoaFisica.GetIdade: Byte;
begin
  Result := FIdade;
end;

procedure TPessoaFisica.SetCPF(const Value: String);
begin
  FCPF := Value;
end;

procedure TPessoaFisica.SetIdade(const Value: Byte);
begin
  FIDADE := Value;
end;

{ TPessoaJuridica }

procedure TPessoaJuridica.CNPJ_Valido;
begin

end;

function TPessoaJuridica.GetCNPJ: String;
begin
  Result := FCNPJ;
end;

function TPessoaJuridica.GetFIE: String;
begin
  Result := FIE;
end;

procedure TPessoaJuridica.SetCNPJ(const Value: String);
begin
  FCNPJ := Value;
end;

procedure TPessoaJuridica.SetFIE(const Value: String);
begin
  FIE := Value;
end;

end.
