object UpdHospede: TUpdHospede
  Left = 0
  Top = 0
  Caption = 'Altera'#231#227'o de H'#243'spedes'
  ClientHeight = 414
  ClientWidth = 769
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 360
    Top = 24
    Width = 186
    Height = 32
    Caption = 'Alterar H'#243'spede'
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
    Width = 46
    Height = 13
    Caption = 'H'#243'spede'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 32
    Top = 160
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
  object Label9: TLabel
    Left = 208
    Top = 160
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
  object Label8: TLabel
    Left = 368
    Top = 160
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
  object Label5: TLabel
    Left = 32
    Top = 216
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
  object Label10: TLabel
    Left = 253
    Top = 216
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
  object Label6: TLabel
    Left = 31
    Top = 272
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
  object Label7: TLabel
    Left = 32
    Top = 328
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
  object txtEditHospede: TEdit
    Left = 32
    Top = 123
    Width = 373
    Height = 21
    TabOrder = 0
  end
  object txtCpfHospede: TMaskEdit
    Left = 32
    Top = 179
    Width = 117
    Height = 21
    EditMask = '###.###.###-##;1;_'
    MaxLength = 14
    TabOrder = 1
    Text = '   .   .   -  '
  end
  object txtFoneHospede: TMaskEdit
    Left = 208
    Top = 179
    Width = 114
    Height = 21
    EditMask = '(##)#####-####;1;_'
    MaxLength = 14
    TabOrder = 2
    Text = '(  )     -    '
  end
  object txtCepHospede: TMaskEdit
    Left = 368
    Top = 179
    Width = 118
    Height = 21
    EditMask = '#####-###;1;_'
    MaxLength = 9
    TabOrder = 3
    Text = '     -   '
  end
  object ComboBox2: TComboBox
    Left = 32
    Top = 235
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 4
    Items.Strings = (
      'Masculino'
      'Feminino')
  end
  object txtEditNacionalidade: TEdit
    Left = 253
    Top = 235
    Width = 377
    Height = 21
    TabOrder = 5
  end
  object txtEditProfissao: TEdit
    Left = 32
    Top = 291
    Width = 233
    Height = 21
    TabOrder = 6
  end
  object intEditIdade: TSpinEdit
    Left = 32
    Top = 347
    Width = 57
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 7
    Value = 0
  end
  object Button1: TButton
    Left = 566
    Top = 337
    Width = 139
    Height = 41
    Caption = 'Alterar'
    TabOrder = 8
  end
end
