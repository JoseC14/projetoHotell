object frmCadProduto: TfrmCadProduto
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmCadProduto'
  ClientHeight = 536
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
    Top = 32
    Width = 248
    Height = 32
    Caption = 'Cadastro de Produtos'
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
    Top = 173
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
  object Label8: TLabel
    Left = 32
    Top = 253
    Width = 56
    Height = 13
    Caption = 'Quantidade'
  end
  object txtNome: TEdit
    Left = 32
    Top = 123
    Width = 224
    Height = 21
    TabOrder = 0
  end
  object floatPreco: TMaskEdit
    Left = 32
    Top = 192
    Width = 120
    Height = 21
    EditMask = '###.##;1;_'
    MaxLength = 6
    TabOrder = 1
    Text = '   .  '
  end
  object intQuantidade: TSpinEdit
    Left = 32
    Top = 272
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 2
    Value = 0
  end
  object Button1: TButton
    Left = 32
    Top = 376
    Width = 139
    Height = 41
    Caption = 'Cadastrar'
    TabOrder = 3
    OnClick = Button1Click
  end
end
