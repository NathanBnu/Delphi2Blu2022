unit uElevador;

interface

type
  TElevador = class
  private
    FAndarAtual: Byte;
    FTotalAndares: Byte;
    FCapacidadePessoas: Byte;
    FPessoasPresentes: Byte;

    function GetAndarAtual: Byte;
    function GetCapacidadePessoas: Byte;
    function GetPessoasPresentes: Byte;
    function GetTotalAndares: Byte;

    procedure SetAndarAtual(const Value: Byte);
    procedure SetCapacidadePessoas(const Value: Byte);
    procedure SetPessoasPresentes(const Value: Byte);
    procedure SetTotalAndares(const Value: Byte);

  public
    constructor Create; //Metodo Inicializar ?!
    constructor Destruo; //Metodo Inicializar ?!
    function Entrar: Byte;
    function Sair: Byte;
    function Subir: Byte;
    function Descer: Byte;
    property AndarAtual: Byte read GetAndarAtual write SetAndarAtual;
    property TotalAndares: Byte read GetTotalAndares write SetTotalAndares;
    property CapacidadePessoas: Byte read GetCapacidadePessoas write SetCapacidadePessoas;
    property PessoasPresentes: Byte read GetPessoasPresentes write SetPessoasPresentes;
  end;

implementation

uses
  Vcl.Dialogs;

{ TElevador }

constructor TElevador.Create;
begin
  CapacidadePessoas := 3;
  TotalAndares := 10;
  AndarAtual := 0;
end;

constructor TElevador.Destruo;
begin
  Self.Free;
end;

function TElevador.Entrar: Byte;
begin
  if not CapacidadePessoas >= 3  then
    CapacidadePessoas := CapacidadePessoas + 1
  else
    ShowMessage('O elevador está cheio! Limite de 3 pessoas.');
end;

function TElevador.Sair: Byte;
begin
  if not (CapacidadePessoas = 0) and (CapacidadePessoas > 3) then
    CapacidadePessoas := CapacidadePessoas - 1
  else
    ShowMessage('O elevador está vazio!');
end;
function TElevador.Subir: Byte;
begin
  if not(AndarAtual > 10) and (AndarAtual < 0) then
    AndarAtual := AndarAtual + 1
  else
    ShowMessage('Andar indisponível! Tente de 0 á 10.');
end;

function TElevador.Descer: Byte;
begin
  if not (AndarAtual = 0) and (AndarAtual > 10) then
    AndarAtual := AndarAtual - 1
  else
    ShowMessage('Não foi possivel descer! Você já está no térreo.');
end;

function TElevador.GetAndarAtual: Byte;
begin
  Result := FAndarAtual;
end;

function TElevador.GetCapacidadePessoas: Byte;
begin
  Result := FCapacidadePessoas;
end;

function TElevador.GetPessoasPresentes: Byte;
begin
  Result := FPessoasPresentes;
end;

function TElevador.GetTotalAndares: Byte;
begin
  Result := FTotalAndares;
end;

procedure TElevador.SetAndarAtual(const Value: Byte);
begin
  FAndarAtual := Value;
end;

procedure TElevador.SetCapacidadePessoas(const Value: Byte);
begin
  FCapacidadePessoas := Value;
end;

procedure TElevador.SetPessoasPresentes(const Value: Byte);
begin
  FPessoasPresentes := Value;
end;

procedure TElevador.SetTotalAndares(const Value: Byte);
begin
  FTotalAndares := Value;
end;

end.
