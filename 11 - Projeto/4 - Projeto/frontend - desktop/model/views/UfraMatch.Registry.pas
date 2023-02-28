unit UfraMatch.Registry;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Objects, FMX.Controls.Presentation, FMX.Edit,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.ListBox;

type
  TfraMatchRegistry = class(TFrame)
    rectPrincipal: TRectangle;
    lytPrincipal: TLayout;
    imgLogo: TImage;
    lytBotoes: TLayout;
    rectSalvar: TRectangle;
    Label1: TLabel;
    rectTimeA: TRectangle;
    rectTimeB: TRectangle;
    lblX: TLabel;
    rectData: TRectangle;
    edtData: TEdit;
    rectHora: TRectangle;
    edtHora: TEdit;
    cmbTimeA: TComboBox;
    ComboBox1: TComboBox;
    rectVoltar: TRectangle;
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

end.
