object frmVIsuFuncionario: TfrmVIsuFuncionario
  Left = 0
  Top = 0
  Caption = 'Visualiza'#231#227'o de Funcion'#225'rios'
  ClientHeight = 477
  ClientWidth = 913
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
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
  object Label1: TLabel
    Left = 360
    Top = 24
    Width = 330
    Height = 32
    Caption = 'Visualiza'#231#227'o de Funcion'#225'rios'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
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
  object Edit2: TEdit
    Left = 32
    Top = 123
    Width = 219
    Height = 21
    ReadOnly = True
    TabOrder = 0
  end
  object Edit3: TEdit
    Left = 344
    Top = 123
    Width = 235
    Height = 21
    ReadOnly = True
    TabOrder = 1
  end
  object Edit4: TEdit
    Left = 344
    Top = 176
    Width = 235
    Height = 21
    ReadOnly = True
    TabOrder = 2
  end
  object MaskEdit1: TMaskEdit
    Left = 32
    Top = 176
    Width = 114
    Height = 21
    EditMask = '###.###.###-##;1;_'
    MaxLength = 14
    ReadOnly = True
    TabOrder = 3
    Text = '   .   .   -  '
  end
  object MaskEdit2: TMaskEdit
    Left = 32
    Top = 232
    Width = 114
    Height = 21
    EditMask = '##/##/####;1;_'
    MaxLength = 10
    ReadOnly = True
    TabOrder = 4
    Text = '  /  /    '
  end
  object MaskEdit3: TMaskEdit
    Left = 32
    Top = 344
    Width = 116
    Height = 21
    EditMask = '##/##/####;1;_'
    MaxLength = 10
    ReadOnly = True
    TabOrder = 5
    Text = '  /  /    '
  end
  object Edit1: TEdit
    Left = 32
    Top = 291
    Width = 219
    Height = 21
    ReadOnly = True
    TabOrder = 6
  end
end
