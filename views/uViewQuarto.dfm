object Quarto: TQuarto
  Left = 0
  Top = 0
  Caption = 'Quartos'
  ClientHeight = 477
  ClientWidth = 1059
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = -4
    Width = 1057
    Height = 481
    ActivePage = TabSheet2
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Cadastrar'
      object Label1: TLabel
        Left = 360
        Top = 24
        Width = 235
        Height = 32
        Caption = 'Cadastro de Quartos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 32
        Top = 104
        Width = 78
        Height = 13
        Caption = 'Tipo de Quarto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 32
        Top = 173
        Width = 97
        Height = 13
        Caption = 'N'#250'mero do Quarto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Cadastrar: TButton
        Left = 558
        Top = 400
        Width = 139
        Height = 41
        Caption = 'Cadastrar'
        TabOrder = 0
        OnClick = CadastrarClick
      end
      object intNumero: TSpinEdit
        Left = 32
        Top = 192
        Width = 121
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 1
        Value = 0
      end
      object comTipo: TComboBox
        Left = 32
        Top = 123
        Width = 145
        Height = 21
        Style = csDropDownList
        TabOrder = 2
        Items.Strings = (
          'Solteiro Standard'
          'Solteiro Master'
          'Solteiro Deluxe'
          'Casal Standard'
          'Casal Master'
          'Casal Deluxe')
      end
    end
    object TabSheet2: TTabSheet
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
      object Label5: TLabel
        Left = 296
        Top = 3
        Width = 308
        Height = 32
        Caption = 'Gerenciamento de Quartos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 576
        Top = 88
        Width = 78
        Height = 13
        Caption = 'Tipo de Quarto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 576
        Top = 133
        Width = 97
        Height = 13
        Caption = 'N'#250'mero do Quarto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object txtPesquisa: TEdit
        Left = 327
        Top = 56
        Width = 185
        Height = 21
        TabOrder = 0
      end
      object Pesquisar: TButton
        Left = 518
        Top = 54
        Width = 75
        Height = 25
        Caption = 'Pesquisar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = PesquisarClick
      end
      object comPesquisa: TComboBox
        Left = 159
        Top = 56
        Width = 145
        Height = 21
        Style = csDropDownList
        TabOrder = 2
        Items.Strings = (
          'N'#250'mero'
          'Tipo')
      end
      object tbquarto: TDBGrid
        Left = 280
        Top = 85
        Width = 280
        Height = 342
        DataSource = dsPesquisa
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = tbquartoCellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'id_quarto'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'numero'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tipo'
            Width = 243
            Visible = True
          end>
      end
      object Deletar: TButton
        Left = 680
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
        TabOrder = 4
        OnClick = DeletarClick
      end
      object Alterar: TButton
        Left = 599
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
        TabOrder = 5
        OnClick = AlterarClick
      end
      object comEditQuarto: TComboBox
        Left = 576
        Top = 107
        Width = 145
        Height = 21
        Style = csDropDownList
        TabOrder = 6
        Items.Strings = (
          'Solteiro Standard'
          'Solteiro Master'
          'Solteiro Deluxe'
          'Casal Standard'
          'Casal Master'
          'Casal Deluxe')
      end
      object intEditNumero: TSpinEdit
        Left = 576
        Top = 152
        Width = 121
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 7
        Value = 0
      end
    end
  end
  object Tb_quartoTable: TFDQuery
    Active = True
    ConnectionName = 'ConexaoHotel'
    SQL.Strings = (
      'SELECT * FROM db_syshotel.tb_quarto')
    Left = 31
    Top = 45
  end
  object dsPesquisa: TDataSource
    DataSet = Tb_quartoTable
    Left = 28
    Top = 100
  end
end
