object Conexao: TConexao
  OldCreateOrder = False
  Height = 498
  Width = 704
  object FDConexao: TFDConnection
    ConnectionName = 'Conexao'
    Params.Strings = (
      'User_Name=root'
      'Database=db_syshotel'
      'Server=localhost'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 64
    Top = 248
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 64
    Top = 304
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorHome = 'C:\Users\josec\Documents\ProjetosDelphi\hotel'
    VendorLib = 'libmysql.dll'
    Left = 64
    Top = 368
  end
  object sqlLogin: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      
        'SELECT nome_user,senha_user FROM tb_funcionario WHERE nome_user ' +
        '= :user AND senha_user = :senha')
    Left = 264
    Top = 248
    ParamData = <
      item
        Name = 'USER'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'SENHA'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
end
