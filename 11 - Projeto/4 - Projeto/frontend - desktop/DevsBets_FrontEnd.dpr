program DevsBets_FrontEnd;

uses
  System.StartUpCopy,
  FMX.Forms,
  UfrmLoginAuthentication in 'model\views\UfrmLoginAuthentication.pas' {frmLoginAuthentication},
  UfrmLogin in 'model\views\UfrmLogin.pas' {frmLogin},
  UfrmLoginRegistry in 'model\views\UfrmLoginRegistry.pas' {frmLoginRegistry},
  UEntity.Bets in '..\backend\model\entities\UEntity.Bets.pas',
  UEntity.Logins in '..\backend\model\entities\UEntity.Logins.pas',
  UEntity.Matchs in '..\backend\model\entities\UEntity.Matchs.pas',
  UEntity.Teams in '..\backend\model\entities\UEntity.Teams.pas',
  UEntity.Users in '..\backend\model\entities\UEntity.Users.pas',
  UService.Base in 'model\services\UService.Base.pas',
  UService.Intf in 'model\services\UService.Intf.pas',
  UService.User in 'model\services\UService.User.pas',
  UUtils.Constants in 'model\utils\UUtils.Constants.pas',
  UService.Login in 'model\services\UService.Login.pas',
  UService.User.Authenticated in 'model\services\UService.User.Authenticated.pas',
  UfrmHome in 'model\views\UfrmHome.pas' {frmHome};

{$R *.res}

begin
  //Ao fazer o Deploy para o cliente comentar essa linha.
  ReportMemoryLeaksOnShutDown := true;

  Application.Initialize;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.Run;
end.
