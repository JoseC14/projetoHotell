object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 498
  Width = 704
  object FDConexao: TFDConnection
    ConnectionName = 'Conexao'
    Params.Strings = (
      'User_Name=root'
      'Password=1234'
      'Database=db_syshotel'
      'Server=localhost'
      'DriverID=MySQL')
    Connected = True
    Left = 64
    Top = 248
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 64
    Top = 304
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorHome = 'C:\Users\josec\OneDrive\Documentos\livrariamysql'
    VendorLib = 'libmysql.dll'
    Left = 64
    Top = 368
  end
end
