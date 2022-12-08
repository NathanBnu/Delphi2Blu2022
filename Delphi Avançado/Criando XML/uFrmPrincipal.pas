unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Xml.xmldom, Xml.XMLIntf,
  Xml.XMLDoc;

type
  TForm1 = class(TForm)
    mmLeitura: TMemo;
    btnLeitura: TButton;
    XMLDocument1: TXMLDocument;
    procedure btnLeituraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnLeituraClick(Sender: TObject);
var
  xAtualizacao: IXMLNode;
  xExecutaveis: IXMLNode;
  xExecutavel: IXMLNode;
  xBibliotecas: IXMLNode;
  xBiblioteca: IXMLNode;
begin
  //Ativa o componente TXMLDocument
  XMLDocument1.Active := true;

  //Criar o n� principal do xml
  xAtualizacao := XMLDocument1.AddChild('atualizacao');

  //Cria o n� dos executaveis dentro do n� principal
  xExecutaveis := xAtualizacao.AddChild('executaveis');

  //Adiciona um executavel ao n� de executaveis
  xExecutavel := xExecutaveis.AddChild('executavel');
  xExecutavel.SetAttributeNS('versao', '', '1.0.3.22');
  xExecutavel.SetAttributeNS('descricao', '', 'Modeulo gerencial');
  xExecutavel.text := 'gerencial.exe';

  //Adiciona um executavel ao n� de executaveis
  xExecutavel := xExecutaveis.AddChild('executavel');
  xExecutavel.SetAttributeNS('versao', '', '1.0.3.123');
  xExecutavel.SetAttributeNS('descricao', '', 'Configuracoes da Aplicacao');
  xExecutavel.text := 'configuracoes.exe';

  //Cria o n� de bibliotecas dentro do n� principal
  xBibliotecas := xAtualizacao.AddChild('bibliotecas');

  //Adiciona uma biblioteca ao n� de biblioteca
  xBiblioteca := xBibliotecas.AddChild('biblioteca');
  xBiblioteca.SetAttributeNS('versao', '', '2.0.0.1');
  xBiblioteca.SetAttributeNS('descricao', '', 'Biblioteca de funcoes');
  xBiblioteca.Text := 'funcoes.dll';

  //Adiciona uma biblioteca ao n� de biblioteca
  xBiblioteca := xBibliotecas.AddChild('biblioteca');
  xBiblioteca.SetAttributeNS('versao', '', '1.2.0.4');
  xBiblioteca.SetAttributeNS('descricao', '', 'Biblioteca com rotinas de negocio de aplicacao');
  xBiblioteca.Text := 'app.dll';

  //Mostra o arquvio xml gerado
  mmLeitura.Lines.text := XMLDocument1.XML.Text;

end;

end.
