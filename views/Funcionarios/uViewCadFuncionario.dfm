object frmCadFuncionario: TfrmCadFuncionario
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmCadFuncionario'
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
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 290
    Height = 32
    Caption = 'Cadastro de Funcion'#225'rios'
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
  object Label3: TLabel
    Left = 32
    Top = 157
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
  object Label6: TLabel
    Left = 32
    Top = 213
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
  object Label7: TLabel
    Left = 32
    Top = 272
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
  object Label8: TLabel
    Left = 32
    Top = 325
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
  object Label10: TLabel
    Left = 344
    Top = 157
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
  object Label9: TLabel
    Left = 344
    Top = 104
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
  object txtNome: TEdit
    Left = 32
    Top = 123
    Width = 222
    Height = 21
    TabOrder = 0
  end
  object txtCpf: TMaskEdit
    Left = 32
    Top = 176
    Width = 116
    Height = 21
    EditMask = '###.###.###-##;1;_'
    MaxLength = 14
    TabOrder = 1
    Text = '   .   .   -  '
  end
  object txtDataAdmissao: TMaskEdit
    Left = 32
    Top = 232
    Width = 115
    Height = 21
    EditMask = '##/##/####;1;_'
    MaxLength = 10
    TabOrder = 2
    Text = '  /  /    '
  end
  object comGenero: TComboBox
    Left = 32
    Top = 291
    Width = 144
    Height = 21
    Style = csDropDownList
    TabOrder = 3
    Items.Strings = (
      'Masculino '
      'Feminino'
      'Outro')
  end
  object txtDataNascimento: TMaskEdit
    Left = 32
    Top = 344
    Width = 116
    Height = 21
    EditMask = '##/##/####;1;_'
    MaxLength = 10
    TabOrder = 4
    Text = '  /  /    '
  end
  object btnCadastrar: TButton
    Left = 32
    Top = 392
    Width = 139
    Height = 41
    Caption = 'Cadastrar'
    TabOrder = 5
    OnClick = btnCadastrarClick
  end
  object txtSenha: TEdit
    Left = 344
    Top = 176
    Width = 241
    Height = 21
    TabOrder = 6
  end
  object txtUser: TEdit
    Left = 344
    Top = 123
    Width = 241
    Height = 21
    TabOrder = 7
  end
  object rgGerente: TRadioGroup
    Left = 344
    Top = 213
    Width = 137
    Height = 60
    Caption = 'Gerente'
    Items.Strings = (
      'Sim'
      'N'#227'o')
    TabOrder = 8
  end
end
