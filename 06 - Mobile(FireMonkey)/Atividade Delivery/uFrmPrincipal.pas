unit uFrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation, FMX.Layouts, FMX.Effects;

type
  TfrmPrincipal = class(TForm)
    FlowLayout1: TFlowLayout;
    ToolBar1: TToolBar;
    Rectangle1: TRectangle;
    Label1: TLabel;
    Rectangle2: TRectangle;
    ShadowEffect1: TShadowEffect;
    ShadowEffect2: TShadowEffect;
    Image1: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Rectangle3: TRectangle;
    ShadowEffect3: TShadowEffect;
    Image2: TImage;
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
