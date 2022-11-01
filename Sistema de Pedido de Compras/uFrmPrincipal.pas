unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Image4: TImage;
    Image3: TImage;
    Image2: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Image5: TImage;
    Label5: TLabel;
    Image6: TImage;
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses UfrmCompradores;

procedure TfrmPrincipal.Image2Click(Sender: TObject);
begin
  if not Assigned(frmCompradores) then
    frmCompradores := TfrmCompradores.Create(Self);

    frmCompradores.Show;
end;

end.