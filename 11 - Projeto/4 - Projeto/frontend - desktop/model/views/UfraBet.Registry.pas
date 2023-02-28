unit UfraBet.Registry;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Layouts, FMX.Controls.Presentation, FMX.Edit,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView;

type
  TfraBetRegistry = class(TFrame)
    rectPrincipal: TRectangle;
    lytPrincipal: TLayout;
    imgLogo: TImage;
    lstBotoes: TLayout;
    rectSalvar: TRectangle;
    Label1: TLabel;
    rectTimeA: TRectangle;
    rectTimeB: TRectangle;
    edtResultTeamA: TEdit;
    edtResultTeamB: TEdit;
    lblX: TLabel;
    rectVoltar: TRectangle;
    Label2: TLabel;
    lstPartidas: TListView;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

end.
