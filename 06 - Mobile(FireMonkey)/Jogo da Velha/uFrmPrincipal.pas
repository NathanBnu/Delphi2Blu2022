unit uFrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.Objects, FMX.Layouts, FMX.Effects;

type
  TfrmPrincipal = class(TForm)
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    Layout1: TLayout;
    rect_fundo_tab1: TRectangle;
    lyt_tab1: TLayout;
    img_capa: TImage;
    lyt_jogadores: TLayout;
    rect_banana: TRectangle;
    FlowLayout1: TFlowLayout;
    rect_morango: TRectangle;
    img_banana: TImage;
    img_morango: TImage;
    Layout2: TLayout;
    rect_deu_velha: TRectangle;
    rect_game_over: TRectangle;
    rect_parabens: TRectangle;
    rect_fundo_tab2: TRectangle;
    lyt_tab2: TLayout;
    img_capa_2: TImage;
    Layout3: TLayout;
    FlowLayout2: TFlowLayout;
    rect_1_1: TRectangle;
    img_1_1: TImage;
    ShadowEffect1: TShadowEffect;
    rect_1_2: TRectangle;
    img_1_2: TImage;
    rect_1_3: TRectangle;
    img_1_3: TImage;
    rect_2_1: TRectangle;
    img_2_1: TImage;
    rect_2_2: TRectangle;
    img_2_2: TImage;
    rect_2_3: TRectangle;
    img_2_3: TImage;
    rect_3_1: TRectangle;
    img_3_1: TImage;
    rect_3_2: TRectangle;
    img_3_2: TImage;
    rect_3_3: TRectangle;
    img_3_3: TImage;
    img_computador: TImage;
    img_jogador: TImage;
    rect_fim_jogo: TRectangle;
    rect_progresso: TRectangle;
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
