object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 256
  ClientWidth = 432
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
    Left = 0
    Top = 0
    Width = 432
    Height = 23
    Align = alTop
    Caption = 'ELEVADOR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitLeft = 8
    ExplicitWidth = 418
  end
  object Label2: TLabel
    Left = 248
    Top = 8
    Width = 124
    Height = 14
    Alignment = taRightJustify
    Caption = 'Pessoas no elevador'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 118
    Top = 7
    Width = 72
    Height = 14
    Alignment = taRightJustify
    Caption = 'Andar atual'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnInicializar: TButton
    Left = 160
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Inicializar'
    TabOrder = 0
    OnClick = btnInicializarClick
  end
  object btnEntrar: TButton
    Left = 160
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Entrar'
    TabOrder = 1
  end
  object btnSair: TButton
    Left = 160
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 2
  end
  object btnSubir: TButton
    Left = 160
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Subir'
    TabOrder = 3
  end
  object btnDescer: TButton
    Left = 160
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Descer'
    TabOrder = 4
  end
  object edtAndarAtual: TEdit
    Left = 196
    Top = 5
    Width = 42
    Height = 21
    TabOrder = 5
  end
  object edtPessoasElevador: TEdit
    Left = 378
    Top = 5
    Width = 45
    Height = 21
    TabOrder = 6
  end
end
