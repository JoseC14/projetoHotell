object frmGerFuncionario: TfrmGerFuncionario
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Funcion'#225'rios'
  ClientHeight = 555
  ClientWidth = 1066
  Color = clGradientActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label17: TLabel
    Left = 812
    Top = 385
    Width = 32
    Height = 13
    Caption = 'Senha'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label16: TLabel
    Left = 812
    Top = 339
    Width = 40
    Height = 13
    Caption = 'Usu'#225'rio'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label15: TLabel
    Left = 812
    Top = 293
    Width = 103
    Height = 13
    Caption = 'Data de Nascimento'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label14: TLabel
    Left = 812
    Top = 240
    Width = 38
    Height = 13
    Caption = 'Gen'#234'ro'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label13: TLabel
    Left = 812
    Top = 195
    Width = 92
    Height = 13
    Caption = 'Data de Admiss'#227'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 812
    Top = 149
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
  object Label11: TLabel
    Left = 812
    Top = 104
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
    Left = 8
    Top = 8
    Width = 363
    Height = 32
    Caption = 'Gerenciamento de Funcion'#225'rios'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit7: TEdit
    Left = 812
    Top = 404
    Width = 238
    Height = 21
    TabOrder = 0
  end
  object Edit6: TEdit
    Left = 812
    Top = 358
    Width = 238
    Height = 21
    TabOrder = 1
  end
  object MaskEdit6: TMaskEdit
    Left = 812
    Top = 312
    Width = 114
    Height = 21
    EditMask = '##/##/####;1;_'
    MaxLength = 10
    TabOrder = 2
    Text = '  /  /    '
  end
  object ComboBox3: TComboBox
    Left = 812
    Top = 259
    Width = 142
    Height = 21
    Style = csDropDownList
    TabOrder = 3
    Items.Strings = (
      'Masculino '
      'Feminino'
      'Outro')
  end
  object MaskEdit5: TMaskEdit
    Left = 812
    Top = 214
    Width = 114
    Height = 21
    EditMask = '##/##/####;1;_'
    MaxLength = 10
    TabOrder = 4
    Text = '  /  /    '
  end
  object MaskEdit4: TMaskEdit
    Left = 812
    Top = 168
    Width = 116
    Height = 21
    EditMask = '###.###.###-##;1;_'
    MaxLength = 14
    TabOrder = 5
    Text = '   .   .   -  '
  end
  object Edit5: TEdit
    Left = 812
    Top = 123
    Width = 222
    Height = 21
    TabOrder = 6
  end
  object ComboBox1: TComboBox
    Left = 159
    Top = 56
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 7
    Items.Strings = (
      'Nome'
      'CPF'
      'Data de Admiss'#227'o'
      'Gen'#234'ro'
      'Data de Admiss'#227'o'
      'Usu'#225'rio'
      'Senha')
  end
  object Edit1: TEdit
    Left = 327
    Top = 56
    Width = 185
    Height = 21
    TabOrder = 8
  end
  object Button2: TButton
    Left = 518
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object Button3: TButton
    Left = 599
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Alterar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
  object Button4: TButton
    Left = 680
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Deletar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnClick = Button4Click
  end
  object tbfuncionario: TDBGrid
    Left = 8
    Top = 99
    Width = 774
    Height = 342
    DataSource = dsFuncionario
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Tb_funcionarioTable: TFDQuery
    Active = True
    Connection = Conexao.FDConexao
    SQL.Strings = (
      'SELECT * FROM db_syshotel.tb_funcionario')
    Left = 531
    Top = 500
  end
  object dsFuncionario: TDataSource
    DataSet = Tb_funcionarioTable
    Left = 408
    Top = 480
  end
end
