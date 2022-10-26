object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 505
  ClientWidth = 855
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
    Width = 118
    Height = 32
    Caption = 'Check-Out'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 72
    Top = 93
    Width = 83
    Height = 13
    Caption = 'Produtos Pedidos'
  end
  object Label3: TLabel
    Left = 344
    Top = 93
    Width = 80
    Height = 13
    Caption = 'Servi'#231'os Pedidos'
  end
  object Label4: TLabel
    Left = 616
    Top = 93
    Width = 68
    Height = 13
    Caption = 'Dias Passados'
  end
  object Label5: TLabel
    Left = 693
    Top = 93
    Width = 67
    Height = 13
  end
  object DBLBProduto: TDBListBox
    Left = 72
    Top = 112
    Width = 233
    Height = 385
    ItemHeight = 13
    TabOrder = 0
  end
  object DBListBox1: TDBListBox
    Left = 344
    Top = 112
    Width = 233
    Height = 385
    ItemHeight = 13
    TabOrder = 1
  end
  object Button1: TButton
    Left = 670
    Top = 456
    Width = 139
    Height = 41
    Caption = 'Fazer Check-Out'
    TabOrder = 2
  end
end
