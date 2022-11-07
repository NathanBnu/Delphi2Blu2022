unit Classes.Pix;

interface

uses Classes.Pagamento;

type TPix = class(TPagamento)
     private
       { private declarations }
     protected
       { protected declarations }
     public
       { public declarations }
       
     published
       { published declarations }
       function Pagar: String;
     end;

implementation

{ TPix }

function TPix.Pagar: String;
begin
  Result := 'Dentro do Pix';
end;

end.
