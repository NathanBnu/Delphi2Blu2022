unit uBombaCombustivel;

interface

type

  TTipos = (Diesel, GasolinaComum, GasolinaAditivada, Alcool);

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
    function abastecerPorValor: Currency;

    property TipoCombustivel: TTipos read GetTipoCombustivel write SetTipoCombustivel;
    property ValorLitro: Currency read GetValorLitro write SetValorLitro;
    property QuantidadeCombustivel: Double read GetQuantidadeCombustivel write SetQuantidadeCombustivel;
  end;
implementation

{ TBombaCombustivel }

function TBombaCombustivel.abastecerPorValor: Currency;
begin

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
