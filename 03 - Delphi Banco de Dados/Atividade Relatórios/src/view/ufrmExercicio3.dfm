object frmExercicio3: TfrmExercicio3
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio 3'
  ClientHeight = 461
  ClientWidth = 484
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 484
    Height = 35
    Align = alTop
    Alignment = taCenter
    Caption = 'Filmes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 95
  end
  object Label2: TLabel
    Left = 48
    Top = 104
    Width = 81
    Height = 13
    Caption = 'Filtrar por cidade'
  end
  object Label3: TLabel
    Left = 48
    Top = 160
    Width = 95
    Height = 13
    Caption = 'Filtrar por endere'#231'o'
  end
  object btnVisualizar: TButton
    Left = 208
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Visualizar'
    TabOrder = 0
  end
  object btnExportar: TButton
    Left = 208
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Exportar'
    TabOrder = 1
  end
  object edtFilme: TEdit
    Left = 184
    Top = 101
    Width = 129
    Height = 21
    TabOrder = 2
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 184
    Top = 160
    Width = 129
    Height = 21
    TabOrder = 3
  end
  object FDQuery1: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'SELECT * FROM film_actor')
    Left = 56
    Top = 376
  end
end
