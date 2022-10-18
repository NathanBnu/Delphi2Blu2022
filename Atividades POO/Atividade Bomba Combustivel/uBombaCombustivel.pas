unit uBombaCombustivel;

interface

type

  TTipos = (tpDiesel, tpGasolinaComum, tpGasolinaAditivada, tpAlcool);

  TBombaCombustivel = class
  private
    FTipoCombustivel: TTipos;
    FValorLitro: Currency;
    FQuantidadeCombustivel: Double;

    function GetQuantidadeCombustivel: Double;
    function GetTipoCombustivel: TTipos;
    function GetValorLitro: Currency;

    procedure SetQuantidadeCombustivel(const Value: Double);
    procedure SetTipoCombustivel(const Value: TTipos);
    procedure SetValorLitro(const Value: Currency);

  public
    procedure abastecerPorValor(Const aValor: Currency);
    procedure abastecerPorLitro(Const aLitros: Double);
    procedure alterarValor(Const aAlterarValor: String);
    procedure alterarCombustivel(Const aAlterarCombustivel: TTipos);
    procedure alterarQuantidadeCombustivel(Const aAlterarQtdCombustivel: String);
    property TipoCombustivel: TTipos read GetTipoCombustivel write SetTipoCombustivel;
    property ValorLitro: Currency read GetValorLitro write SetValorLitro;
    property QuantidadeCombustivel: Double read GetQuantidadeCombustivel write SetQuantidadeCombustivel;
  end;
implementation

uses
  System.SysUtils, Vcl.Dialogs;

{ TBombaCombustivel }

procedure TBombaCombustivel.abastecerPorLitro(const aLitros: Double);
var
  xQuantidade: Double;
begin
  xQuantidade := aLitros;

  if xQuantidade > FQuantidadeCombustivel then
    raise Exception.Create('Quantidade indisponivel');

  FQuantidadeCombustivel := FQuantidadeCombustivel - xQuantidade;
end;

procedure TBombaCombustivel.abastecerPorValor(Const aValor : Currency);
var
  xQuantidade: Double;
begin
  xQuantidade := aValor / FValorLitro;

  if xQuantidade > FQuantidadeCombustivel then
    raise Exception.Create('Quantidade indisponivel');

  FQuantidadeCombustivel := FQuantidadeCombustivel - xQuantidade;
end;

procedure TBombaCombustivel.alterarCombustivel(const aAlterarCombustivel: TTipos);
var
  xCombustivel: TTipos;
begin
  TipoCombustivel := xCombustivel;
end;

procedure TBombaCombustivel.alterarQuantidadeCombustivel(const aAlterarQtdCombustivel: String);
var
  xValor: Double;
begin
  if TryStrToFloat(aAlterarQtdCombustivel, xValor) then
    begin
      QuantidadeCombustivel := xValor;
    end
  else
     ShowMessage('Erro');
end;

procedure TBombaCombustivel.alterarValor(const aAlterarValor: String);
var
  xValor: Double;
begin
  if TryStrtoFloat(aAlterarValor, xValor) then
    begin
      ValorLitro := xValor;
    end
  else
    ShowMessage('Erro');
end;

function TBombaCombustivel.GetQuantidadeCombustivel: Double;
begin
  result := QuantidadeCombustivel;
end;

function TBombaCombustivel.GetTipoCombustivel: TTipos;
begin
  result := TipoCombustivel;
end;

function TBombaCombustivel.GetValorLitro: Currency;
begin
  result := ValorLitro;
end;

procedure TBombaCombustivel.SetQuantidadeCombustivel(const Value: Double);
begin
  FQuantidadeCombustivel := Value;
end;

procedure TBombaCombustivel.SetTipoCombustivel(const Value: TTipos);
begin
  FTipoCombustivel := Value;
end;

procedure TBombaCombustivel.SetValorLitro(const Value: Currency);
begin
  FValorLitro := Value;
end;

end.
