object frmAtividade1: TfrmAtividade1
  Left = 0
  Top = 0
  Caption = 'Atividade 1'
  ClientHeight = 211
  ClientWidth = 434
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 0
    Top = 0
    Width = 434
    Height = 33
    Align = alTop
    Alignment = taCenter
    Caption = 'Atores'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 88
  end
  object edtAtor: TEdit
    Left = 48
    Top = 96
    Width = 337
    Height = 21
    TabOrder = 0
    TextHint = 'Pesquisar ator'
  end
  object btnVisualizar: TButton
    Left = 310
    Top = 131
    Width = 75
    Height = 25
    Caption = 'Visualizar'
    TabOrder = 1
  end
  object btnExportar: TButton
    Left = 310
    Top = 162
    Width = 75
    Height = 25
    Caption = 'Exportar'
    TabOrder = 2
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 96
    Top = 160
  end
  object FDQuery1: TFDQuery
    Connection = DataModule1.FDConexao
    SQL.Strings = (
      
        '////////////SELECT ID, DESCRICAO FROM UNIDADEMEDIDA WHERE(DESCRI' +
        'CAO LIKE :DESCRICAO) OR (COALESCE(:DESCRICAO,'#39#39') ='#39#39')')
    Left = 24
    Top = 160
    ParamData = <
      item
        Name = 'DESCRICAO'
        ParamType = ptInput
      end>
  end
end
