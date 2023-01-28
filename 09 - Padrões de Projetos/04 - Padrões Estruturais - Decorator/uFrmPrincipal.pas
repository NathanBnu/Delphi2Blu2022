unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.AppEvnts,
  UConcreteDecorator_DataHora, UConcreteDecorator_Usuario, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    ApplicationEvents1: TApplicationEvents;
    Button1: TButton;
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  UInterfaceComponent, UConcreteComponent, UConcreteDecorator_WindoWS;

{$R *.dfm}

procedure TForm1.ApplicationEvents1Exception(Sender: TObject; E: Exception);
var
  xLogExcecao: ILogExcecao;
begin
  xLogExcecao := TLogExcecao.create(E);

  xLogExcecao := TDataHoraDecorator.Create(xLogExcecao);
  xLogExcecao := TUsuarioDecorator.Create(xLogExcecao);
  xLogExcecao := TWindowsDecorator.Create(xLogExcecao);

  ShowMessage(xLogExcecao.ObterDadosExcecao);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  raise Exception.Create('Qualquer Exce��o!');
end;

end.
