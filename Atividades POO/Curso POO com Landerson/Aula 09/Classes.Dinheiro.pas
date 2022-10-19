unit Classes.Dinheiro;

interface

uses Classes.Pagamento;

type TDinheiro = class(TPagamento)
     private
       { private declarations }
     protected
       { protected declarations }
     public
       { public declarations }

     published
       { published declarations }
       function Pagar: String; override;
     end;

implementation

{ TDinheiro }
function TDinheiro.Pagar: String;
begin
    Result := 'Dentro de dinheiro';
end;
end.
