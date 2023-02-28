unit UfraTeam;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation, FMX.Layouts, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView;

type
  TfraTeam = class(TFrame)
    rectPrincipal: TRectangle;
    rectToolbar: TRectangle;
    rectExcluir: TRectangle;
    Label1: TLabel;
    rectNovo: TRectangle;
    Label2: TLabel;
    lytPrincipal: TLayout;
    imgLogo: TImage;
    lstTimes: TListView;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

end.
