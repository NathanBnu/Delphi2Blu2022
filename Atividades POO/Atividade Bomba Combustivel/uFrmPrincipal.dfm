object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 407
  ClientWidth = 522
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
  object bntEscolher: TButton
    Left = 110
    Top = 67
    Width = 75
    Height = 25
    Caption = 'Escolher'
    TabOrder = 1
    OnClick = bntEscolherClick
  end
  object rdAbastecer: TRadioGroup
    Left = 8
    Top = 98
    Width = 177
    Height = 84
    Caption = 'Abastecer'
    Enabled = False
    Items.Strings = (
      'Por Valor'
      'Por Litro')
    TabOrder = 2
    OnClick = rdAbastecerClick
  end
  object edtValor: TEdit
    Left = 8
    Top = 188
    Width = 177
    Height = 21
    Enabled = False
    TabOrder = 3
    TextHint = 'Abastecer...'
  end
  object bntAbastecer: TButton
    Left = 110
    Top = 217
    Width = 75
    Height = 25
    Caption = 'Abastecer'
    Enabled = False
    TabOrder = 4
    OnClick = bntAbastecerClick
  end
  object mmResultado: TMemo
    Left = 224
    Top = 17
    Width = 265
    Height = 225
    TabOrder = 5
  end
end
