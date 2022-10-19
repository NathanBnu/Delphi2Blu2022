unit Classes.Pagamento;

interface

type TPagamento = class
     private
    FValor: Double;
    FMensagem: String;
    procedure SetMensagem(const Value: String);
    procedure SetValor(const Value: Double);
       { private declarations }
     protected
       { protected declarations }
     public
       { public declarations }
       property Valor: Double read FValor write SetValor;
       property Mensagem: String read FMensagem write SetMensagem;

       Function Pagar: String; virtual; abstract;

     published
       { published declarations }
     end;

implementation

{ TPagamento }

procedure TPagamento.SetMensagem(const Value: String);
begin
  FMensagem := Value;
end;

procedure TPagamento.SetValor(const Value: Double);
begin
  FValor := Value;
end;

end.
