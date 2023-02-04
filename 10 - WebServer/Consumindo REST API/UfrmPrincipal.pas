unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope;

type
  TOperacoes = (tpSomar, tpSubtrair, tpDividir, tpMultiplicar);
  TForm1 = class(TForm)
    lblResultado: TLabel;
    edtNumero1: TEdit;
    edtNumero2: TEdit;
    cmbOperacao: TComboBox;
    btnCalcular: TButton;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    procedure btnCalcularClick(Sender: TObject);
  private
    const SUCESSO = 100;
  public
    procedure TratarResposta;
    procedure Calcular;
  end;

var
  Form1: TForm1;

implementation

uses
  System.SysUtils;

{$R *.dfm}

procedure TForm1.btnCalcularClick(Sender: TObject);
begin
  Calcular;
end;

procedure TForm1.TratarResposta;
begin
  if RESTResponse1.StatusCode = SUCESSO then
    lblResultado.Caption := 'Resultado: ' + RESTResponse1.Content
  else
    lblResultado.Caption := Format('Erro na Requisição: Status(%d)', [RESTResponse1.StatusCode]);
end;

procedure TForm1.Calcular;
var
  xNumero1, xNumero2: Double;
begin
  if not tryStrToFloat(edtNumero1.Text, xNumero1) then
    raise Exception.Create('Valor inválido!');
  if not tryStrToFloat(edtNumero2.Text, xNumero2) then
    raise Exception.Create('Valor inválido!');

  case TOperacoes(cmbOperacao.ItemIndex) of
    tpSomar: RESTClient1.BaseURL := Format('http://localhost:9005/somar/(%d)', xNumero1., xNumero2);
  end;

  RESTRequest1.Execute;

  Self.TratarResposta;
end;

end.
