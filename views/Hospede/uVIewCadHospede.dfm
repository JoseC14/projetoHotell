﻿object frmCadHospede: TfrmCadHospede
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'frmCadHospede'
  ClientHeight = 564
  ClientWidth = 677
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
  object Idade: TLabel
    Left = 32
    Top = 376
    Width = 29
    Height = 13
    Caption = 'Idade'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
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
    Font.Color = clBlack
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
  object Sexo: TLabel
    Left = 32
    Top = 264
    Width = 24
    Height = 13
    Caption = 'Sexo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
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
  object CPF: TLabel
    Left = 32
    Top = 208
    Width = 19
    Height = 13
    Caption = 'CPF'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Nome: TLabel
    Left = 32
    Top = 152
    Width = 30
    Height = 13
    Caption = 'Nome'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object CadastroHospedes: TLabel
    Left = 31
    Top = 80
    Width = 254
    Height = 32
    Caption = 'Cadastro de H'#243'spedes'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtNome: TEdit
    Left = 32
    Top = 171
    Width = 373
    Height = 21
    TabOrder = 0
  end
  object intIdade: TSpinEdit
    Left = 32
    Top = 395
    Width = 53
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 1
    Value = 0
  end
  object txtProfissao: TEdit
    Left = 32
    Top = 339
    Width = 229
    Height = 21
    TabOrder = 2
  end
  object txtNacionalidade: TEdit
    Left = 253
    Top = 283
    Width = 229
    Height = 21
    TabOrder = 3
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
  object txtCep: TMaskEdit
    Left = 368
    Top = 227
    Width = 115
    Height = 21
    EditMask = '#####-###;1;_'
    MaxLength = 9
    TabOrder = 5
    Text = '     -   '
  end
  object txtFone: TMaskEdit
    Left = 208
    Top = 227
    Width = 114
    Height = 21
    EditMask = '(##)#####-####;1;_'
    MaxLength = 14
    TabOrder = 6
    Text = '(  )     -    '
  end
  object txtCpf: TMaskEdit
    Left = 32
    Top = 227
    Width = 120
    Height = 21
    EditMask = '###.###.###-##;1;_'
    MaxLength = 14
    TabOrder = 7
    Text = '   .   .   -  '
  end
  object btnCadastrar: TButton
    Left = 344
    Top = 416
    Width = 139
    Height = 41
    Caption = 'Cadastrar'
    TabOrder = 8
    OnClick = btnCadastrarClick
  end
end
