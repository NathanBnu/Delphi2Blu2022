unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Classes.Dinheiro, Classes.Pagamento, Classes.Pix;

procedure TForm1.Button1Click(Sender: TObject);
var
  xDin: TDinheiro;
begin
  xDin := TDinheiro.Create;
  xDin.Valor := StrToFloat(edit1.text);
  xDin.Mensagem := xDin.Pagar;
  ShowMessage(xDin.Mensagem);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  xPix: TPix;
begin
  xPix := TPix.Create;
  xPix.Valor := StrToFloat(edit1.text);
  xPix.Mensagem := xPix.Pagar;
  ShowMessage(xPix.Mensagem);
end;

end.
