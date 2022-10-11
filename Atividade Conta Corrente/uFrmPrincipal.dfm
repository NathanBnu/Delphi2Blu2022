object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Conta Corrente'
  ClientHeight = 281
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lblNome: TLabel
    Left = 29
    Top = 93
    Width = 35
    Height = 13
    Caption = 'Nome:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblSaldo: TLabel
    Left = 29
    Top = 133
    Width = 66
    Height = 13
    Caption = 'Saldo atual:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnComecar: TButton
    Left = 29
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Cadastrar '
    TabOrder = 0
    OnClick = btnComecarClick
  end
  object btnAlterarNome: TButton
    Left = 152
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Alterar Nome'
    TabOrder = 1
  end
  object btnDepositar: TButton
    Left = 233
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Depositar'
    TabOrder = 2
  end
  object btnSacar: TButton
    Left = 314
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Sacar'
    TabOrder = 3
  end
end
