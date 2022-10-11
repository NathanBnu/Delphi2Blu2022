unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UContaCorrente;

type
  TfrmPrincipal = class(TForm)
    btnComecar: TButton;
    lblNome: TLabel;
    lblSaldo: TLabel;
    btnAlterarNome: TButton;
    btnDepositar: TButton;
    btnSacar: TButton;
    procedure btnComecarClick(Sender: TObject);
    //procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FContaCorrente: TContaCorrente;
    procedure comecar;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation


{$R *.dfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.btnComecarClick(Sender: TObject);
begin
  Comecar
end;

//Cadastrar dados
procedure TfrmPrincipal.comecar;
var
  xContaCorrente: TContaCorrente;
begin
  FContaCorrente := TContaCorrente.Create;

  xContaCorrente.NumeroConta := StrToInt(InputBox('Numero da conta', 'Numero da conta', ''));
  xContaCorrente.NomeCorretista := InputBox('Nome do corretista', 'Nome do corretista', '');
  xContaCorrente.Saldo := StrToFloat(InputBox('Saldo','Saldo', '0'));

  lblNome.Caption := 'Nome: ' + xContaCorrente.NomeCorretista;
  lblSaldo.Caption := 'Saldo: R$' + FloatToStr(xContaCorrente.Saldo);
end;

//Destruir
procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FContaCorrente);
end;

end.
