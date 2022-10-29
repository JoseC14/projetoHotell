object frmGerHospede: TfrmGerHospede
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmGerHospede'
  ClientHeight = 533
  ClientWidth = 1066
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object IdadeEdit: TLabel
    Left = 794
    Top = 409
    Width = 29
    Height = 13
    Caption = 'Idade'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object ProfissaoEdit: TLabel
    Left = 792
    Top = 359
    Width = 47
    Height = 13
    Caption = 'Profiss'#227'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object nacionalidadeEdit: TLabel
    Left = 793
    Top = 315
    Width = 74
    Height = 13
    Caption = 'Nacionalidade'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object SexoEdit: TLabel
    Left = 794
    Top = 269
    Width = 24
    Height = 13
    Caption = 'Sexo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object CEPEdit: TLabel
    Left = 794
    Top = 224
    Width = 19
    Height = 13
    Caption = 'CEP'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object FoneEdit: TLabel
    Left = 794
    Top = 173
    Width = 26
    Height = 13
    Caption = 'Fone'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object CPFEdit: TLabel
    Left = 794
    Top = 125
    Width = 19
    Height = 13
    Caption = 'CPF'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object NomeEdit: TLabel
    Left = 794
    Top = 77
    Width = 30
    Height = 13
    Caption = 'Nome'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object GerenciamentoHospede: TLabel
    Left = 202
    Top = 3
    Width = 327
    Height = 32
    Caption = 'Gerenciamento de H'#243'spedes'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 80
    Top = 59
    Width = 73
    Height = 13
    Caption = 'Pesquisar por:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object txtEditNome: TEdit
    Left = 794
    Top = 96
    Width = 240
    Height = 21
    TabOrder = 0
  end
  object txtEditIdade: TEdit
    Left = 794
    Top = 429
    Width = 141
    Height = 21
    TabOrder = 1
  end
  object txtEditProfissao: TEdit
    Left = 793
    Top = 378
    Width = 229
    Height = 21
    TabOrder = 2
  end
  object txtEditNacionalidade: TEdit
    Left = 793
    Top = 334
    Width = 241
    Height = 21
    TabOrder = 3
  end
  object comEditSexo: TComboBox
    Left = 794
    Top = 288
    Width = 141
    Height = 21
    Style = csDropDownList
    TabOrder = 4
    Items.Strings = (
      'Masculino'
      'Feminino')
  end
  object txtEditCep: TMaskEdit
    Left = 794
    Top = 243
    Width = 115
    Height = 21
    EditMask = '#####-###;1;_'
    MaxLength = 9
    TabOrder = 5
    Text = '     -   '
  end
  object txtEditFone: TMaskEdit
    Left = 794
    Top = 192
    Width = 114
    Height = 21
    EditMask = '(##)#####-####;1;_'
    MaxLength = 14
    TabOrder = 6
    Text = '(  )     -    '
  end
  object txtEditCpf: TMaskEdit
    Left = 794
    Top = 144
    Width = 120
    Height = 21
    EditMask = '###.###.###-##;1;_'
    MaxLength = 14
    TabOrder = 7
    Text = '   .   .   -  '
  end
  object btnDeletar: TButton
    Left = 687
    Top = 54
    Width = 75
    Height = 25
    Caption = 'Deletar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = btnDeletarClick
  end
  object btnAlterar: TButton
    Left = 606
    Top = 54
    Width = 75
    Height = 25
    Caption = 'Alterar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = btnAlterarClick
  end
  object btnPesquisar: TButton
    Left = 525
    Top = 54
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 10
    OnClick = btnPesquisarClick
  end
  object txtPesquisa: TMaskEdit
    Left = 335
    Top = 56
    Width = 184
    Height = 21
    TabOrder = 11
    Text = ''
  end
  object comPesquisa: TComboBox
    Left = 176
    Top = 56
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 12
    Items.Strings = (
      'Nome'
      'CPF'
      'CEP'
      'Idade'
      'Nacionalidade'
      'Fone'
      'Sexo'
      'Profiss'#227'o')
  end
  object tbhospede: TDBGrid
    Left = 8
    Top = 96
    Width = 785
    Height = 342
    DataSource = dshospede
    FixedColor = clCream
    Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = tbhospedeCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id_hospede'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'nome'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cpf'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sexo'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'profissao'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cep'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fone'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nacionalidade'
        Width = 97
        Visible = True
      end>
  end
  object cdshospede: TClientDataSet
    Aggregates = <>
    MasterSource = dshospede
    PacketRecords = 0
    Params = <>
    Left = 32
    Top = 16
  end
  object Tb_hospedeTable: TFDQuery
    Active = True
    ConnectionName = 'ConexaoHotel'
    SQL.Strings = (
      'SELECT * FROM db_syshotel.tb_hospede')
    Left = 60
    Top = 15
  end
  object dshospede: TDataSource
    DataSet = Tb_hospedeTable
    Top = 16
  end
end
