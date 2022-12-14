unit uFrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Objects, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    VertScrollBox1: TVertScrollBox;
    rect_Valores: TRectangle;
    lblTitulo: TLabel;
    lytProduto: TLayout;
    lblTituloProduto: TLabel;
    lblCentavosProduto: TLabel;
    lblReaisProduto: TLabel;
    lytEnvio: TLayout;
    lblTituloEnvio: TLabel;
    lblCentavosEnvio: TLabel;
    lblReaisEnvio: TLabel;
    linhaEnvio: TLine;
    lytParcelas: TLayout;
    lblTituloParcelas: TLabel;
    lblCentavosParcelas: TLabel;
    lblReaisParcelas: TLabel;
    lblParcelasParcelas: TLabel;
    lyt_botao_compra: TLayout;
    Rectangle1: TRectangle;
    btn_comprar: TSpeedButton;
    lyt_compra_ok: TLayout;
    Image1: TImage;
    lyt_loading_compra: TLayout;
    rect_barra: TRectangle;
    Label1: TLabel;
    rect_fundo: TRectangle;
    rect_fundo_branco_top: TRectangle;
    lyt_detalhes: TLayout;
    Rectangle2: TRectangle;
    circuloEndereco: TCircle;
    lblproduto: TLabel;
    lblQuantidade: TLabel;
    linhaProduto: TLine;
    circuloProduto: TCircle;
    lblEndereco: TLabel;
    lblComplemento: TLabel;
    lblComprador: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

end.
