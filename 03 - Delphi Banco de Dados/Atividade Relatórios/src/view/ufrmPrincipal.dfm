object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 441
  ClientWidth = 484
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 440
    Top = 16
    object Relatrios1: TMenuItem
      Caption = '&Relat'#243'rios'
      object Relatrio11: TMenuItem
        Caption = 'Exerc'#237'cio &1'
        OnClick = Relatrio11Click
      end
      object Relatrio21: TMenuItem
        Caption = 'Exerc'#237'cio &2'
        OnClick = Relatrio21Click
      end
      object Relatrio31: TMenuItem
        Caption = 'Exerc'#237'cio &3'
        OnClick = Relatrio31Click
      end
    end
  end
end
