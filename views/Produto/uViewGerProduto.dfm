object frmGerProduto: TfrmGerProduto
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmGerProduto'
  ClientHeight = 536
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
  object Label5: TLabel
    Left = 296
    Top = 3
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
    Left = 661
    Top = 95
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
    Left = 663
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
  object Label9: TLabel
    Left = 661
    Top = 187
    Width = 56
    Height = 13
    Caption = 'Quantidade'
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
    Left = 663
    Top = 114
    Width = 159
    Height = 21
    TabOrder = 5
  end
  object txtEditPreco: TMaskEdit
    Left = 663
    Top = 160
    Width = 120
    Height = 21
    EditMask = '###.##;1;_'
    MaxLength = 6
    TabOrder = 6
    Text = '   .  '
  end
  object txtEditQuantidade: TSpinEdit
    Left = 661
    Top = 206
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 7
    Value = 0
  end
  object tbproduto: TDBGrid
    Left = 245
    Top = 100
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
  object dsProduto: TDataSource
    AutoEdit = False
    DataSet = Tb_produtoTable
    Left = 140
    Top = 12
  end
  object Tb_produtoTable: TFDQuery
    Active = True
    ConnectionName = 'ConexaoHotel'
    SQL.Strings = (
      'SELECT * FROM db_syshotel.tb_produto')
    Left = 69
    Top = 12
  end
end
