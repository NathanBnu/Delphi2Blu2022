object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 277
  Width = 462
  object FDConexao: TFDConnection
    Params.Strings = (
      'Database=Sakila'
      'User_Name=root'
      'Password=root'
      'Server=localhost'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 192
    Top = 64
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\mysql\Documents\Delphi2Blu2022\03 - Delphi Banco de Dad' +
      'os\Atividade Relat'#243'rios\lib\libmysql.dll'
    Left = 192
    Top = 160
  end
end
