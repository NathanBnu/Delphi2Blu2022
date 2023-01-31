unit UConcreteObserver_Log;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  UNotificacao, UObserver;

type
  TfraLog = class(TFrame, IObserver)
    Label1: TLabel;
    Memo1: TMemo;
  private
    { Private declarations }
  public
    procedure Atualizar(aNotificacao: TNotificacao);
  end;

implementation

{$R *.dfm}

uses UfrmPrincipal;

{ TfraLog }

procedure TfraLog.Atualizar(aNotificacao: TNotificacao);
var
  xTextoLog: String;
begin
  xTextoLog := Format('Uma opera��o de %s de %.2f foi adicionada', [aNotificacao.Operacao, aNotificacao.Valor]);

  Memo1.Lines.Add(xTextoLog);
end;

end.
