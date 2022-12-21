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
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    rect_barra_de_pesquisa: TRectangle;
    lblSearch: TLabel;
    Rectangle3: TRectangle;
    Image1: TImage;
    rect_paginas: TRectangle;
    Label1: TLabel;
    Label2: TLabel;
    FlowLayout1: TFlowLayout;
    rect_Titulo: TRectangle;
    lblTitulo: TLabel;
    Rectangle4: TRectangle;
    Rectangle5: TRectangle;
    Label3: TLabel;
    Label4: TLabel;
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
