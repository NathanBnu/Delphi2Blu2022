unit UController.User;

interface

uses
  Horse, GBSwagger.path.Attributes, UController.Base, UEntity.Users;

type
  [SwagPath('users', 'Usu�rios')]
  TControllerUser = class(TControllerBase)
    private
    public
      class function ValidarUser(const aUserName, aPassword: String): Boolean;

      [SwagGet('Listar Usu�rios', True)]
      [SwagResponse(200, TUser, 'Infomra��es do Usu�rio', True)]
      [SwagResponse(404)]
      class procedure Gets(Req: THorseRequest; Res: THorseResponse; Next: TProc); override;

      [SwagGet('{id}', 'Procurar um Usu�rio')]
      [SwagParamPath('id', 'id do Usu�rio')]
      [SwagResponse(200, TUser, 'Informa��es do Usu�rio')]
      [SwagResponse(404)]
      class procedure Get(Req: THorseRequest; Res: THorseResponse; Next: TProc); override;

      [SwagPost('Adicionar Novo Usu�rio')]
      [SwagParamBody('Informa��es do Usu�rio', TUser)]
      [SwagResponse(201)]
      [SwagResponse(400)]
      class procedure Post(Req: THorseRequest; Res: THorseResponse; Next: TProc); override;

      [SwagDELETE('{id}', 'Deletar um Usu�rio')]
      [SwagParamPath('id', 'Id do Usu�rio')]
      [SwagResponse(204)]
      [SwagResponse(400)]
      [SwagResponse(404)]
      class procedure Delete(Req: THorseRequest; Res: THorseResponse; Next: TProc); override;

  end;
implementation

{ TControllerUser }

uses
  UDAO.Users, UDAO.Intf;

{ TControllerUser }

class procedure TControllerUser.Delete(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
begin
  FDAO := TDAOUsers.Create;
  inherited;
end;

class procedure TControllerUser.Get(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
begin
  FDAO := TDAOUsers.Create;
  inherited;
end;

class procedure TControllerUser.Gets(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
begin
  FDAO := TDAOUsers.Create;
  inherited;
end;

class procedure TControllerUser.Post(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
begin
  FDAO := TDAOUsers.Create;
  inherited;
end;

class function TControllerUser.ValidarUser(const aUserName,
  aPassword: String): Boolean;
var
  xDAO: IDAO;
begin
  xDAO := TDAOUsers.Create;
  Result := TDAOUsers(xDAO).ValidarLogin(aUserName, aPassword);
end;

end.
