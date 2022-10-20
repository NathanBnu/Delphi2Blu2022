unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uElevador;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    btnInicializar: TButton;
    btnEntrar: TButton;
    btnSair: TButton;
    btnSubir: TButton;
    btnDescer: TButton;
    Label2: TLabel;
    Label3: TLabel;
    edtAndarAtual: TEdit;
    edtPessoasElevador: TEdit;
    procedure btnInicializarClick(Sender: TObject);
  private
    { Private declarations }
  public
    xElevador: TElevador;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnInicializarClick(Sender: TObject);
begin
  edtAndarAtual:= xElevador.Create.ToString;
end;

end.
