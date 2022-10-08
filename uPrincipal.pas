unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtNome: TEdit;
    edtDataNascimento: TEdit;
    edtAltura: TEdit;
    btnCadastrar: TButton;
    mmImprimir: TMemo;
    Label5: TLabel;
    procedure btnCadastrarClick(Sender: TObject);
  private
    procedure Cadastrar;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  uPessoa;

{$R *.dfm}

{ TForm1 }

procedure TForm1.btnCadastrarClick(Sender: TObject);
begin
  Cadastrar;
end;

procedure TForm1.Cadastrar;
var
  xNome: TPessoa;
  xDataNascimento: TPessoa;
  xAltura: TPessoa;

begin
  xNome := TPessoa.Create;
  xDataNascimento := TPessoa.Create;
  xAltura := TPessoa.Create;

  try
    xNome.Nome := edtNome.Text;
    xDataNascimento.DataNascimento := StrToDateTime(edtDataNascimento.Text);
    xAltura.Altura := StrToFloat(edtAltura.Text);

    mmImprimir.Lines.Add('Nome cadastrado: ' + xNome.Nome);
    mmImprimir.Lines.Add('Sua data de nascimento: ' + DateTimeToStr(xDataNascimento.DataNascimento));
    mmImprimir.Lines.Add('Sua altura: ' + FloatToStr(xAltura.altura) + #13#10);

  finally
    FreeAndNil(xNome);
    FreeAndNil(xDataNascimento);
    FreeAndNil(xAltura);
  end;

end;

end.
