unit uFrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Ani, FMX.ListBox;

type
  TfrmPrincipal = class(TForm)
    imgCartaz: TImage;
    Image1: TImage;
    imgLogo: TImage;
    lytGenero: TLayout;
    Image2: TImage;
    lblFiltro: TLabel;
    Layout1: TLayout;
    image: TImage;
    Image4: TImage;
    Label1: TLabel;
    Image5: TImage;
    Layout2: TLayout;
    Image3: TImage;
    Label2: TLabel;
    Layout3: TLayout;
    Image6: TImage;
    Label3: TLabel;
    lytMenu: TLayout;
    Rectangle1: TRectangle;
    lytFechar: TLayout;
    Image7: TImage;
    ListBox1: TListBox;
    FloatAnimation1: TFloatAnimation;
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
