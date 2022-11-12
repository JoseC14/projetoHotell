object QuartoDao: TQuartoDao
  OldCreateOrder = False
  Height = 430
  Width = 747
  object sqlInserir: TFDQuery
    Connection = Conexao.FDConexao
    SQL.Strings = (
      'INSERT INTO tb_quarto (numero,tipo) VALUES (:numero,:tipo)')
    Left = 256
    Top = 144
    ParamData = <
      item
        Name = 'NUMERO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object sqlAlterar: TFDQuery
    Connection = Conexao.FDConexao
    SQL.Strings = (
      
        'UPDATE tb_quarto SET numero = :numero, tipo = :tipo WHERE id_qua' +
        'rto = :id')
    Left = 320
    Top = 144
    ParamData = <
      item
        Name = 'NUMERO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object sqlDeletar: TFDQuery
    Connection = Conexao.FDConexao
    SQL.Strings = (
      'DELETE FROM tb_quarto WHERE id_quarto = :id')
    Left = 376
    Top = 144
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
