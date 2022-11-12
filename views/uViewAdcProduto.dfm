object AdcProduto: TAdcProduto
  Left = 0
  Top = 0
  Caption = 'Adicionar Produto'
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
  object Label5: TLabel
    Left = 316
    Top = 8
    Width = 212
    Height = 32
    Caption = 'Adicionar Produto'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 80
    Top = 75
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
  object ComboBox1: TComboBox
    Left = 176
    Top = 72
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 0
    Items.Strings = (
      'H'#243'spede'
      'Quarto')
  end
  object Edit1: TEdit
    Left = 327
    Top = 72
    Width = 185
    Height = 21
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 80
    Top = 103
    Width = 774
    Height = 342
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button5: TButton
    Left = 534
    Top = 70
    Width = 115
    Height = 25
    Caption = 'Adicionar Produto'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
end
