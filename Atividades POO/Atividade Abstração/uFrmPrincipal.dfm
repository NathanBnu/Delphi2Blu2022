object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 254
  ClientWidth = 417
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 152
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Ligar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 152
    Top = 111
    Width = 75
    Height = 25
    Caption = 'Desligar'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 152
    Top = 142
    Width = 75
    Height = 25
    Caption = 'Jogar'
    TabOrder = 2
    OnClick = Button3Click
  end
end
