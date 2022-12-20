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
    procedure OnClickSelecioneJogador(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure OnClickJogador(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  TabControl1.TabPosition := TTabPosition.None;
  TabControl1.ActiveTab := TabItem1;
end;

procedure TfrmPrincipal.OnClickSelecioneJogador(Sender: TObject);
var
  xPosicao: Integer;
  xRetangulo: String;
  xJogador: String;
begin
  TabControl1.ActiveTab := TabItem2;

  xRetangulo := (Sender as TRectangle).Name;
  xPosicao := Pos('_', xRetangulo);
  xJogador := Copy(xRetangulo, xPosicao + 1, Length(xRetangulo));

  if xJogador = 'morango' then
  begin
    img_jogador.Bitmap := img_morango.Bitmap;
    img_computador.Bitmap := img_banana.Bitmap;
  end
  else //banana
  begin
    img_jogador.Bitmap := img_banana.Bitmap;
    img_computador.Bitmap := img_morango.Bitmap;
  end;
end;

procedure TfrmPrincipal.OnClickJogador(Sender: TObject);
var
  xPosicao: Integer;
  xCoordenadas: String;
  xLinha: Byte;
  xColuna: Byte;
  xRetangulo: TRectangle;
  xImagem: TImage;
begin
  xRetangulo := (Sender as TRectangle);

  xPosicao := Pos('_', xRetangulo.Name);
  xCoordenadas := Copy(xRetangulo.Name, xPosicao + 1, Length(xRetangulo.Name));

  xLinha := StrToInt(Copy(xCoordenadas, 1, 1));
  xColuna := StrToInt(Copy(xCoordenadas, 3, 1));

  //FJogoVelha.RealizarJogada(TJogador.TpPlayer1, xLinha, xColuna);

  xImagem := TImage(FindComponent('img_' + xCoordenadas));
  xImagem.Bitmap := img_jogador.Bitmap;
  xImagem.Visible := True;

  xRetangulo.HitTest := False;
end;

end.
