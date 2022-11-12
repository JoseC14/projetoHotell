object frmGerServico: TfrmGerServico
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmGerServico'
  ClientHeight = 555
  ClientWidth = 1066
  Color = clGradientActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 381
    Top = 96
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
  object Label5: TLabel
    Left = 80
    Top = 8
    Width = 311
    Height = 32
    Caption = 'Gerenciamento de Servi'#231'os'
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
  object Label7: TLabel
    Left = 381
    Top = 141
    Width = 28
    Height = 13
    Caption = 'Pre'#231'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 51
    Top = 464
    Width = 76
    Height = 13
    Caption = 'Filtrar por nome'
  end
  object Label1: TLabel
    Left = 320
    Top = 464
    Width = 77
    Height = 13
    Caption = 'Filtrar por pre'#231'o'
  end
  object txtPesquisa: TEdit
    Left = 327
    Top = 56
    Width = 184
    Height = 21
    TabOrder = 0
  end
  object btnDeletar: TButton
    Left = 679
    Top = 54
    Width = 74
    Height = 25
    Caption = 'Deletar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnDeletarClick
  end
  object btnAlterar: TButton
    Left = 599
    Top = 56
    Width = 74
    Height = 25
    Caption = 'Alterar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnAlterarClick
  end
  object btnPesquisar: TButton
    Left = 518
    Top = 56
    Width = 74
    Height = 25
    Caption = 'Pesquisar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btnPesquisarClick
  end
  object comPesquisa: TComboBox
    Left = 159
    Top = 56
    Width = 144
    Height = 21
    Style = csDropDownList
    TabOrder = 4
    Items.Strings = (
      'Nome'
      'Pre'#231'o')
  end
  object txtEditNome: TEdit
    Left = 383
    Top = 115
    Width = 159
    Height = 21
    TabOrder = 5
  end
  object txtEditPreco: TMaskEdit
    Left = 381
    Top = 160
    Width = 120
    Height = 21
    EditMask = '###.##;1;_'
    MaxLength = 6
    TabOrder = 6
    Text = '   .  '
  end
  object tbservico: TDBGrid
    Left = 80
    Top = 96
    Width = 281
    Height = 342
    DataSource = dsServico
    Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = tbservicoCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id_servicos'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'nome'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'preco'
        Visible = True
      end>
  end
  object comFilNome: TComboBox
    Left = 133
    Top = 461
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 8
    OnChange = comFilNomeChange
    Items.Strings = (
      ''
      'A-Z'
      'Z-A'
      'A'
      'B'
      'C'
      'D'
      'E'
      'F'
      'G'
      'H'
      'I'
      'J'
      'K'
      'L'
      'M'
      'N'
      'O'
      'P'
      'Q'
      'R'
      'S'
      'T'
      'U'
      'V'
      'W'
      'X'
      'Y'
      'Z')
  end
  object comFilPreco: TComboBox
    Left = 403
    Top = 461
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 9
    OnChange = comFilPrecoChange
    Items.Strings = (
      ''
      'Maior para Menor'
      'Menor para Maior')
  end
  object btnLimparFIltro: TButton
    Left = 658
    Top = 459
    Width = 141
    Height = 25
    Caption = 'Limpar Filtros'
    TabOrder = 10
    OnClick = btnLimparFIltroClick
  end
  object dsServico: TDataSource
    DataSet = Tb_servicosTable
    Left = 786
    Top = 36
  end
  object Tb_servicosTable: TFDQuery
    Active = True
    Connection = Conexao.FDConexao
    SQL.Strings = (
      'SELECT * FROM db_syshotel.tb_servicos')
    Left = 887
    Top = 36
  end
end
