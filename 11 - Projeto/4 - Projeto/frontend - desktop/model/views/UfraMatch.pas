unit UfraMatch;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Layouts, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView, FMX.Controls.Presentation;

type
  TfraMatch = class(TFrame)
    rectPrincipal: TRectangle;
    lytPrincipal: TLayout;
    imgLogo: TImage;
    rectExcluir: TRectangle;
    Label1: TLabel;
    rectNovo: TRectangle;
    Label2: TLabel;
    rectToolbar: TRectangle;
    Layout1: TLayout;
    ListView1: TListView;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

end.
