object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 354
  ClientWidth = 634
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 177
    Height = 18
    Caption = 'Escolha um combust'#237'vel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cmbCombustiveis: TComboBox
    Left = 8
    Top = 40
    Width = 177
    Height = 21
    TabOrder = 0
    TextHint = 'Combust'#237'veis...'
    Items.Strings = (
      'Gasolina Comum'
      'Gasolina Aditivada'
      'Diesel'
      #193'lcool')
  end
end
