program DevsBets_Backend;

{$APPTYPE CONSOLE}

uses
  Horse,
  System.SysUtils,
  UEntity.Users in 'model\entities\UEntity.Users.pas',
  UEntity.Logins in 'model\entities\UEntity.Logins.pas',
  UEntity.Teams in 'model\entities\UEntity.Teams.pas',
  UEntity.Matchs in 'model\entities\UEntity.Matchs.pas',
  UEntity.Bets in 'model\entities\UEntity.Bets.pas',
  UDAO.Intf in 'model\dao\UDAO.Intf.pas',
  UDAO in 'model\dao\UDAO.Base',
  UUtil.Banco in 'model\utils\UUtil.Banco.pas';

begin

  THorse.Get('/ping',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    begin
      Res.Send('pong');
    end);

  THorse.Listen(9000,
    procedure(Horse: THorse)
    begin
      Writeln('Server is runing on port ' + IntToStr(Horse.Port));
    end);
end.