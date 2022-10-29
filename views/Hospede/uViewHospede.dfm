object Hospede: THospede
  Left = 0
  Top = 0
  Caption = 'H'#243'spede'
  ClientHeight = 500
  ClientWidth = 1050
  Color = clGradientActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pgHospede: TPageControl
    Left = -7
    Top = -4
    Width = 1049
    Height = 481
    ActivePage = TabSheet1
    TabOrder = 0
    object telacadastro: TTabSheet
      Caption = 'Cadastrar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 8
      ExplicitTop = 28
      object CadastroHospedes: TLabel
        Left = 31
        Top = 80
        Width = 254
        Height = 32
        Caption = 'Cadastro de H'#243'spedes'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Nome: TLabel
        Left = 32
        Top = 152
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
      object CPF: TLabel
        Left = 32
        Top = 208
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
      object Fone: TLabel
        Left = 208
        Top = 208
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
      object CEP: TLabel
        Left = 368
        Top = 208
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
      object Sexo: TLabel
        Left = 32
        Top = 264
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
      object Nacionalidade: TLabel
        Left = 253
        Top = 264
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
      object Profissão: TLabel
        Left = 31
        Top = 320
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
      object Idade: TLabel
        Left = 32
        Top = 376
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
      object txtNome: TEdit
        Left = 32
        Top = 171
        Width = 369
        Height = 21
        TabOrder = 0
      end
      object txtCpf: TMaskEdit
        Left = 32
        Top = 227
        Width = 117
        Height = 21
        EditMask = '###.###.###-##;1;_'
        MaxLength = 14
        TabOrder = 1
        Text = '   .   .   -  '
      end
      object txtFone: TMaskEdit
        Left = 208
        Top = 227
        Width = 113
        Height = 21
        EditMask = '(##)#####-####;1;_'
        MaxLength = 14
        TabOrder = 2
        Text = '(  )     -    '
      end
      object txtCep: TMaskEdit
        Left = 368
        Top = 227
        Width = 115
        Height = 21
        EditMask = '#####-###;1;_'
        MaxLength = 9
        TabOrder = 3
        Text = '     -   '
      end
      object comSexo: TComboBox
        Left = 32
        Top = 283
        Width = 141
        Height = 21
        Style = csDropDownList
        TabOrder = 4
        Items.Strings = (
          'Masculino'
          'Feminino')
      end
      object txtNacionalidade: TEdit
        Left = 253
        Top = 283
        Width = 229
        Height = 21
        TabOrder = 5
      end
      object txtProfissao: TEdit
        Left = 32
        Top = 339
        Width = 229
        Height = 21
        TabOrder = 6
      end
      object intIdade: TSpinEdit
        Left = 32
        Top = 395
        Width = 53
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 7
        Value = 0
      end
      object btnCadastrar: TButton
        Left = 344
        Top = 412
        Width = 139
        Height = 41
        Caption = 'Cadastrar'
        TabOrder = 8
      end
    end
    object telagerenciar: TTabSheet
      Caption = 'Gerenciar'
      ImageIndex = 1
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
      object comPesquisa: TComboBox
        Left = 176
        Top = 56
        Width = 145
        Height = 21
        Style = csDropDownList
        TabOrder = 0
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
        TabOrder = 1
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
        TabOrder = 2
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
        TabOrder = 3
        OnClick = btnAlterarClick
      end
      object txtEditNome: TEdit
        Left = 794
        Top = 96
        Width = 244
        Height = 21
        TabOrder = 4
      end
      object txtEditCpf: TMaskEdit
        Left = 794
        Top = 144
        Width = 120
        Height = 21
        EditMask = '###.###.###-##;1;_'
        MaxLength = 14
        TabOrder = 5
        Text = '   .   .   -  '
      end
      object txtEditFone: TMaskEdit
        Left = 794
        Top = 192
        Width = 115
        Height = 21
        EditMask = '(##)#####-####;1;_'
        MaxLength = 14
        TabOrder = 6
        Text = '(  )     -    '
      end
      object txtEditCep: TMaskEdit
        Left = 794
        Top = 243
        Width = 118
        Height = 21
        EditMask = '#####-###;1;_'
        MaxLength = 9
        TabOrder = 7
        Text = '     -   '
      end
      object txtEditNacionalidade: TEdit
        Left = 793
        Top = 334
        Width = 245
        Height = 21
        TabOrder = 8
      end
      object txtEditProfissao: TEdit
        Left = 793
        Top = 378
        Width = 233
        Height = 21
        TabOrder = 9
      end
      object comEditSexo: TComboBox
        Left = 794
        Top = 288
        Width = 145
        Height = 21
        Style = csDropDownList
        TabOrder = 10
        Items.Strings = (
          'Masculino'
          'Feminino')
      end
      object txtEditIdade: TEdit
        Left = 794
        Top = 429
        Width = 145
        Height = 21
        TabOrder = 11
      end
      object btnPesquisar: TButton
        Left = 525
        Top = 54
        Width = 75
        Height = 25
        Caption = 'Pesquisar'
        TabOrder = 12
        OnClick = btnPesquisarClick
      end
      object txtPesquisa: TMaskEdit
        Left = 335
        Top = 56
        Width = 184
        Height = 21
        TabOrder = 13
        Text = ''
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Relat'#243'rios'
      ImageIndex = 2
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 1041
        Height = 32
        Align = alTop
        Alignment = taCenter
        Caption = 'Relat'#243'rios'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 115
      end
      object Label2: TLabel
        Left = 56
        Top = 72
        Width = 17
        Height = 13
        Caption = 'De:'
      end
      object Label3: TLabel
        Left = 224
        Top = 72
        Width = 17
        Height = 13
        Caption = 'At'#233
      end
      object Label5: TLabel
        Left = 414
        Top = 50
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
      object dtInicio: TMaskEdit
        Left = 79
        Top = 69
        Width = 120
        Height = 21
        EditMask = '##/##/####;1;_'
        MaxLength = 10
        TabOrder = 0
        Text = '  /  /    '
      end
      object dtFim: TMaskEdit
        Left = 247
        Top = 69
        Width = 120
        Height = 21
        EditMask = '##/##/####;1;_'
        MaxLength = 10
        TabOrder = 1
        Text = '  /  /    '
      end
      object rgAtivo: TRadioGroup
        Left = 600
        Top = 50
        Width = 143
        Height = 65
        Caption = 'Ativo'
        Items.Strings = (
          'Sim'
          'N'#227'o'
          'Todos')
        TabOrder = 2
      end
      object comRelSexo: TComboBox
        Left = 414
        Top = 69
        Width = 145
        Height = 21
        Style = csDropDownList
        TabOrder = 3
        Items.Strings = (
          'Masculino'
          'Feminino'
          'Todos')
      end
      object btnRelatorio: TButton
        Left = 779
        Top = 368
        Width = 219
        Height = 49
        Caption = 'Gerar Relatorio'
        TabOrder = 4
        OnClick = btnRelatorioClick
      end
    end
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
  object cdshospede: TClientDataSet
    Aggregates = <>
    MasterSource = dshospede
    PacketRecords = 0
    Params = <>
    Left = 32
    Top = 16
  end
end
