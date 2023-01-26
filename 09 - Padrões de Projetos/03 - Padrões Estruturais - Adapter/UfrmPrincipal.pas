unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtCep: TEdit;
    btnConsultarClick: TButton;
    Button2: TButton;
    lblLogradouro: TLabel;
    lblCidade: TLabel;
    lblBairro: TLabel;
    Label4: TLabel;
    procedure btnConsultarClickClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  UInterfaceViaCep, UTarget, UWebServiceViaCEP;

{$R *.dfm}

procedure TForm1.btnConsultarClickClick(Sender: TObject);
var
  xWebServiceViaCep: IWebServiceViaCEP;
  xComunicador: TComunicador;
  xRetorno: TStringList;
begin
  //Instancia o objeto da classe de consulta
  xWebServiceViaCep := TWebServiceViaCEP.Create;

  //Instancia o comunicador (Target), injetando o objeto de consulta
  xComunicador := TComunicador.Create(xWebServiceViaCep);

  xRetorno := TStringList.Create;

  try
    //O Target consulta o enderco(utilizando o objeto injetado) e retorna os dados
    xRetorno := xComunicador.ConsultarEndereco(edtCep.text);

    lblLogradouro.Caption := xRetorno.Values['Logradouro'];
    lblBairro.Caption := xRetorno.Values['Bairro'];
    lblCidade.Caption := xRetorno.Values['Cidade'];
  finally
    FreeAndNil(xRetorno);
    FreeAndNil(xComunicador);
  end;
end;

end.
