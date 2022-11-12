object ProdutoDao: TProdutoDao
  OldCreateOrder = False
  Height = 410
  Width = 734
  object sqlInserir: TFDQuery
    Connection = Conexao.FDConexao
    SQL.Strings = (
      
        'INSERT INTO tb_produto (nome,preco,quantidade) VALUES (:nome,:pr' +
        'eco,:quantidade)')
    Left = 208
    Top = 120
    ParamData = <
      item
        Name = 'NOME'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PRECO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'QUANTIDADE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object sqlAlterar: TFDQuery
    Connection = Conexao.FDConexao
    SQL.Strings = (
      
        'UPDATE tb_produto SET nome=:nome,preco=:preco,quantidade=:quanti' +
        'dade WHERE id_produto=:id')
    Left = 280
    Top = 120
    ParamData = <
      item
        Name = 'NOME'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PRECO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'QUANTIDADE'
        DataType = ftInteger
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
      'DELETE FROM tb_produto WHERE id_produto = :id')
    Left = 344
    Top = 120
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
