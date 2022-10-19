unit Classes.Conexao;

interface

type TConexao = class
     private
    FEnderecoBD: String;
    procedure SetEnderecoBD(const Value: String);
       { private declarations }
     protected
       { protected declarations }
     public
       { public declarations }
       class function VerificaBD: Boolean;
     published
       { published declarations }

       property EnderecoBD: String read FEnderecoBD write SetEnderecoBD;
     end;
implementation

{ TConexao }
Uses SysUtils;

procedure TConexao.SetEnderecoBD(const Value: String);
begin
  FEnderecoBD := Value;
end;

class function TConexao.VerificaBD: Boolean;
begin
  Result := FileExists('C:\Users\natha\sanct.log');
end;

end.
