object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Altera'#231#227'o de Produtos'
  ClientHeight = 477
  ClientWidth = 934
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
  object Label1: TLabel
    Left = 360
    Top = 24
    Width = 256
    Height = 32
    Caption = 'Altera'#231#227'o de Produtos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
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
  object Button1: TButton
    Left = 558
    Top = 400
    Width = 139
    Height = 41
    Caption = 'Alterar'
    TabOrder = 2
  end
end
