object frmGerProduto: TfrmGerProduto
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmGerProduto'
  ClientHeight = 536
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
  object Label5: TLabel
    Left = 80
    Top = 8
    Width = 321
    Height = 32
    Caption = 'Gerenciamento de Produtos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 80
    Top = 61
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
  object Label6: TLabel
    Left = 453
    Top = 135
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
  object Label7: TLabel
    Left = 455
    Top = 181
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
  object Label9: TLabel
    Left = 455
    Top = 227
    Width = 56
    Height = 13
    Caption = 'Quantidade'
  end
  object Label1: TLabel
    Left = 16
    Top = 456
    Width = 77
    Height = 13
    Caption = 'Filtrar por pre'#231'o'
  end
  object Label2: TLabel
    Left = 267
    Top = 456
    Width = 76
    Height = 13
    Caption = 'Filtrar por nome'
  end
  object Label3: TLabel
    Left = 519
    Top = 456
    Width = 104
    Height = 13
    Caption = 'Filtrar por quantidade'
  end
  object comPesquisa: TComboBox
    Left = 159
    Top = 60
    Width = 144
    Height = 21
    Style = csDropDownList
    TabOrder = 0
    Items.Strings = (
      'Nome'
      'Pre'#231'o'
      'Quantidade')
  end
  object txtPesquisa: TEdit
    Left = 310
    Top = 60
    Width = 184
    Height = 21
    TabOrder = 1
  end
  object btnPesquisar: TButton
    Left = 501
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
    TabOrder = 2
    OnClick = btnPesquisarClick
  end
  object btnAlterar: TButton
    Left = 582
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
    TabOrder = 3
    OnClick = btnAlterarClick
  end
  object btnDeletar: TButton
    Left = 663
    Top = 56
    Width = 74
    Height = 25
    Caption = 'Deletar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = btnDeletarClick
  end
  object txtEditNome: TEdit
    Left = 455
    Top = 154
    Width = 159
    Height = 21
    TabOrder = 5
  end
  object txtEditPreco: TMaskEdit
    Left = 455
    Top = 200
    Width = 120
    Height = 21
    EditMask = '###.##;1;_'
    MaxLength = 6
    TabOrder = 6
    Text = '   .  '
  end
  object txtEditQuantidade: TSpinEdit
    Left = 455
    Top = 246
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 7
    Value = 0
  end
  object tbproduto: TDBGrid
    Left = 80
    Top = 95
    Width = 353
    Height = 342
    DataSource = dsProduto
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = tbprodutoCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id_produto'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'preco'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'quantidade'
        Visible = True
      end>
  end
  object comFilPreco: TComboBox
    Left = 99
    Top = 453
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
  object comFilNome: TComboBox
    Left = 349
    Top = 453
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 10
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
  object comFilQuant: TComboBox
    Left = 629
    Top = 453
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 11
    OnChange = comFilQuantChange
    Items.Strings = (
      ''
      'Maior para Menor'
      'Menor para Maior')
  end
  object btnLimparFIltro: TButton
    Left = 810
    Top = 451
    Width = 141
    Height = 25
    Caption = 'Limpar Filtros'
    TabOrder = 12
    OnClick = btnLimparFIltroClick
  end
  object Tb_produtoTable: TFDQuery
    Active = True
    Connection = Conexao.FDConexao
    SQL.Strings = (
      'SELECT * FROM db_syshotel.tb_produto')
    Left = 30
    Top = 159
  end
  object dsProduto: TDataSource
    DataSet = Tb_produtoTable
    Left = 32
    Top = 240
  end
end
