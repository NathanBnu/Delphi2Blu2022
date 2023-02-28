unit UfraTeamRegistry;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Objects, FMX.Controls.Presentation, FMX.Edit;

type
  TfraTeamRegistry = class(TFrame)
    rectPrincipal: TRectangle;
    lytPrincipal: TLayout;
    imgLogo: TImage;
    lytBotoes: TLayout;
    rectNome: TRectangle;
    edtNome: TEdit;
    rectSalvar: TRectangle;
    Label1: TLabel;
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
