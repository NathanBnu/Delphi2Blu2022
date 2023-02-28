unit UfraBet;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Layouts, FMX.Controls.Presentation, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView;

type
  TfraBet = class(TFrame)
    rectPrincipal: TRectangle;
    lytPrincipal: TLayout;
    imgLogo: TImage;
    lytPartidas: TLayout;
    rectToolbar: TRectangle;
    rectExcluir: TRectangle;
    Label1: TLabel;
    rectNovo: TRectangle;
    Label2: TLabel;
    lstPalpites: TListView;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

end.
