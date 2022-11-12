object HospedeDAO: THospedeDAO
  OldCreateOrder = False
  Height = 511
  Width = 846
  object sqlInserir: TFDQuery
    ConstraintsEnabled = True
    MasterFields = 'nome;cpf;sexo;profissao;idade;cep;fone;nacionalidade'
    Connection = Conexao.FDConexao
    SQL.Strings = (
      
        'INSERT INTO tb_hospede (nome,cpf,sexo,profissao,idade,cep,fone,n' +
        'acionalidade,datacadastro) VALUES (:nome,:cpf,:sexo,:profissao,:' +
        'idade,:cep,:fone,:nacionalidade,:data)')
    Left = 296
    Top = 120
    ParamData = <
      item
        Name = 'NOME'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CPF'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'SEXO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PROFISSAO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'IDADE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CEP'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'FONE'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NACIONALIDADE'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATA'
        ParamType = ptInput
      end>
  end
  object sqlAlterar: TFDQuery
    Connection = Conexao.FDConexao
    SQL.Strings = (
      
        'UPDATE  tb_hospede SET nome=:nome,cpf=:cpf,sexo=:sexo,profissao=' +
        ':profissao,idade=:idade,cep=:cep,fone=:fone,nacionalidade=:nacio' +
        'nalidade WHERE id_hospede=:idhospede ')
    Left = 360
    Top = 120
    ParamData = <
      item
        Name = 'NOME'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CPF'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'SEXO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PROFISSAO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'IDADE'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CEP'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'FONE'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NACIONALIDADE'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'IDHOSPEDE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object sqlDeletar: TFDQuery
    Connection = Conexao.FDConexao
    SQL.Strings = (
      'DELETE FROM tb_hospede WHERE id_hospede=:id')
    Left = 416
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
