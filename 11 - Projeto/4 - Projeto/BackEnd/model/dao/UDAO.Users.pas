unit UDAO.Users;

interface

uses
  UDAO.Base;

type
  TDaoUsers = class(TDaoBase)
    public
      function ValidarLogin(const aUser, aPassword: String): Boolean;
      constructor Create;
  end;
implementation

uses
  System.JSON, System.SysUtils, UUtil.Banco;

{ TDaoUsers }

constructor TDaoUsers.Create;
begin
  FTabela := 'users';
end;

function TDaoUsers.ValidarLogin(const aUser, aPassword: String): Boolean;
var
  xJSONArray: TJSONArray;
begin
  try
    xJSONArray := TUtilBanco.ExecutarConsulta(Format('SELECT * FROM %s WHERE LOGIN = %s AND PASSWORD = %s', [FTabela, QuotedStr(aUser), QuotedStr(aPassword)]));
  except on E: Exception do
    raise Exception.Create('Erro ao Validar Usu�rio: ' + E.Message);
  end;
end;

end.