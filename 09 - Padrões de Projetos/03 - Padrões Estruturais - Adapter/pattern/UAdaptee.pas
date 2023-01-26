unit UAdaptee;

interface

uses
  System.Classes, UWebServiceCorreios;

type
  TWebServiceCorreios = class
    private
      FParametros: ConsultaCEP;
      FRespota: enderecoERP;

      procedure BeforeExecute(const aMethodName: String; aSOAPRequest: TStream);
    public
      destructor Destroy; override;
      procedure DefinirParametrosConsulta(const aCep: string);
      procedure ConsultarCep;
      function ObterResposta(const aInformacao: String): String;
  end;
implementation

{ TWebServiceCorreios }

procedure TWebServiceCorreios.BeforeExecute(const aMethodName: String;
  aSOAPRequest: TStream);
var
  xRequest: TStringList;
begin
  //sobrescreve a requisicao SOAP para deixala de acordo com a estrutura exifida pelo Webservice
  xRequest := TStringList.Create;

  try
     xRequest.Text :=
      '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:cli="http://cliente.bean.master.sigep.bsb.correios.com.br/">' +
      '  <soapenv:Header/>' +
      '    <soapenv:Body>' +
      '      <cli:consultaCEP>' +
      '        <cep>'   + FParametros.cep +  '</cep>' +
      '      </cli:consultaCEP>' +
      '    </soapenv:Body>' +
      '</soapenv:Envelope>';

    aSOAPRequest.Position := 0;
    aSOAPRequest.Size := Length(xRequest.Text);
    xRequest.SaveToStream(aSOAPRequest);
  finally
    FreeAndNil(xRequest);
  end;
end;

procedure TWebServiceCorreios.ConsultarCep;
begin

end;

procedure TWebServiceCorreios.DefinirParametrosConsulta(const aCep: string);
begin

end;

destructor TWebServiceCorreios.Destroy;
begin

  inherited;
end;

function TWebServiceCorreios.ObterResposta(const aInformacao: String): String;
begin

end;

end.
