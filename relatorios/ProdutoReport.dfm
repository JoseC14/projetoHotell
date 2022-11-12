object ProdutoRel: TProdutoRel
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Produtos'
  ClientHeight = 400
  ClientWidth = 786
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = -8
    Top = 0
    Width = 794
    Height = 1123
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object Header: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 16
      BandType = btHeader
    end
    object Title: TRLBand
      Left = 38
      Top = 54
      Width = 718
      Height = 16
      BandType = btTitle
    end
    object Footer: TRLBand
      Left = 38
      Top = 169
      Width = 718
      Height = 88
    end
    object Detail: TRLBand
      Left = 38
      Top = 70
      Width = 718
      Height = 99
      object RLDBText1: TRLDBText
        Left = 24
        Top = 32
        Width = 36
        Height = 16
        DataField = 'nome'
        Text = ''
      end
    end
  end
end
