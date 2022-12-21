unit uFrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts;

type
  TfrmPrincipal = class(TForm)
    ToolBar1: TToolBar;
    imgMenu: TImage;
    imgComprar: TImage;
    rect_menu: TRectangle;
    rect_cesto: TRectangle;
    rect_barra_de_pesquisa: TRectangle;
    lblSearch: TLabel;
    Rectangle3: TRectangle;
    Image1: TImage;
    rect_paginas: TRectangle;
    lblCoffee: TLabel;
    lblNonCoffee: TLabel;
    FlowLayout1: TFlowLayout;
    rect_Titulo: TRectangle;
    lblTitulo: TLabel;
    rect_cafe1: TRectangle;
    rect_descricao: TRectangle;
    lblTitulo1: TLabel;
    lblTitulo2: TLabel;
    Line1: TLine;
    rect_fundo: TRectangle;
    Circle1: TCircle;
    lblMais: TLabel;
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
