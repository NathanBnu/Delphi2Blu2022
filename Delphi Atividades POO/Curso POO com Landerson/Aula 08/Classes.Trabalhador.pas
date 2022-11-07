unit Classes.Trabalhador;

interface

type TTrabalhador = class
     private
    FSalario: Double;
    procedure SetSalario(const Value: Double);
       { private declarations }
     protected
       { protected declarations }
     public
       { public declarations }
       property Salario: Double read FSalario write SetSalario;

       function CalcularSalario(ASalarioMinimo, AIndexador: Double): Double; overload;
       function CalcularSalario(ADiasTrabalhados: Integer; AValorDia: Double): Double; overload;
     published
       { published declarations }
     end;

implementation

{ TTrabalhador }

function TTrabalhador.CalcularSalario(ASalarioMinimo, AIndexador: Double): Double;
begin
  Result := AsalarioMinimo * AIndexador;
end;

function TTrabalhador.CalcularSalario(ADiasTrabalhados: Integer; AValorDia: Double): Double;
begin
  Result := ADiasTrabalhados * AValorDia;
end;

procedure TTrabalhador.SetSalario(const Value: Double);
begin
  FSalario := Value;
end;

end.
