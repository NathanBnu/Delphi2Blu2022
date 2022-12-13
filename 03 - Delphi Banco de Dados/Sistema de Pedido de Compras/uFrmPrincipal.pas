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
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses UfrmCompradores, UfrmFornecedores, UfrmUnMedida, UfrmProdutos, UfrmPedidos;

procedure TfrmPrincipal.Image1Click(Sender: TObject);
begin
  if not Assigned(frmProdutos) then
    frmProdutos := TfrmProdutos.Create(Self);

    frmProdutos.Show;
end;

procedure TfrmPrincipal.Image2Click(Sender: TObject);
begin
  if not Assigned(frmCompradores) then
    frmCompradores := TfrmCompradores.Create(Self);

    frmCompradores.Show;
end;

procedure TfrmPrincipal.Image3Click(Sender: TObject);
begin
  if not Assigned(frmFornecedores) then
    frmFornecedores := TfrmFornecedores.Create(Self);

    frmFornecedores.Show;
end;

procedure TfrmPrincipal.Image4Click(Sender: TObject);
begin
  if not Assigned(frmUnidadeMedida) then
    frmUnidadeMedida := TfrmUnidadeMedida.Create(Self);

    frmUnidadeMedida.Show;
end;

procedure TfrmPrincipal.Image5Click(Sender: TObject);
begin
  if not Assigned(frmPedidos) then
    frmPedidos := TfrmPedidos.Create(Self);

    frmPedidos.Show;
end;

end.
