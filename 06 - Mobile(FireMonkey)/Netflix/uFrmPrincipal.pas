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
    procedure LoadMenu;
    procedure OpenMenu(ind: Boolean);
    procedure SetupMenu(Item: TListBoxItem; texto: String);
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

{ TfrmPrincipal }

procedure TfrmPrincipal.LoadMenu;
begin
  ListBox1.Items.Clear;

  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Todos os gêneros');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Disponível para download');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Ação');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Adolescente');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Anime');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Asiático');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Brasileiro');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Comédia');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Drama');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Esporte');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Mistérios');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Novelas');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Suspense');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Terror');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Novela');
end;

procedure TfrmPrincipal.OpenMenu(ind: Boolean);
begin
  //Esconde o item selecionado...
  ListBox1.ItemIndex := -1;

  //Volta a listagem para o inicio
  ListBox1.ScrollToItem(ListBox1.ItemByIndex(0));

  if ind then
  begin
    lytMenu.Visible := True;
    lytMenu.Tag := 1;
    lytGenero.AnimateFloat('Opacity', 0, 0.2);
    FloatAnimation1.Inverse := False;
  end
  else
  begin
    lytMenu.Tag := 0;
    lytGenero.AnimateFloat('Opacity', 1, 0.4);
    FloatAnimation1.Inverse := True;
  end;

  FloatAnimation1.Start;
end;

procedure TfrmPrincipal.SetupMenu(Item: TListBoxItem; texto: String);
begin

end;

end.
