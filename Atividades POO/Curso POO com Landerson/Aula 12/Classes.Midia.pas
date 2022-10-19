unit Classes.Midia;

interface

uses Modelo.Player;

type TMidia = class(TInterfacedObject)
     private
    FNomeArquivo: String;
    FTipoArquivo: String;
    procedure SetNomeArquivo(const Value: String);
    procedure SetTipoArquivo(const Value: String);
       { private declarations }
     protected
       { protected declarations }
     public
       { public declarations }
       property TipoArquivo: String read FTipoArquivo write SetTipoArquivo;
       property NomeArquivo: String read FNomeArquivo write SetNomeArquivo;
       function Avancar: Integer; virtual; abstract;

     published
       { published declarations }
     end;
implementation

{ TMidia }

procedure TMidia.SetNomeArquivo(const Value: String);
begin
  FNomeArquivo := Value;
end;

procedure TMidia.SetTipoArquivo(const Value: String);
begin
  FTipoArquivo := Value;
end;

end.
